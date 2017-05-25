/*
Navicat MySQL Data Transfer

Source Server         : wye
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : sc_wangyueche

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-05-05 10:19:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for abnormalaggregation
-- ----------------------------
DROP TABLE IF EXISTS `abnormalaggregation`;
CREATE TABLE `abnormalaggregation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `memo` varchar(128) DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `firstNum` int(11) DEFAULT NULL,
  `secNum` int(11) DEFAULT NULL,
  `thrNum` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of abnormalaggregation
-- ----------------------------

-- ----------------------------
-- Table structure for alarm_informations
-- ----------------------------
DROP TABLE IF EXISTS `alarm_informations`;
CREATE TABLE `alarm_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(256) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL COMMENT '0 报备 1 异常聚集 2 超运营 3 人车分离',
  `num` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `vehicle_longitude` double DEFAULT NULL COMMENT '车辆的经度',
  `vehicle_latitude` double DEFAULT NULL COMMENT '车的纬度',
  `driver_longitude` double DEFAULT NULL COMMENT '驾驶员的经度',
  `driver_latitude` double DEFAULT NULL COMMENT '驾驶员的纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alarm_informations
-- ----------------------------
INSERT INTO `alarm_informations` VALUES ('1', '超运营', '2', '2', '2017-04-27', '2sfa', '116', '39', '116', '39');

-- ----------------------------
-- Table structure for company_fare
-- ----------------------------
DROP TABLE IF EXISTS `company_fare`;
CREATE TABLE `company_fare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `fare_type` varchar(16) DEFAULT NULL,
  `fare_type_note` varchar(128) DEFAULT NULL,
  `fare_valid_on` bigint(20) DEFAULT NULL,
  `fare_valid_off` bigint(20) DEFAULT NULL,
  `start_fare` decimal(10,2) DEFAULT NULL,
  `start_mile` decimal(10,2) DEFAULT NULL,
  `unit_price_per_mile` decimal(10,2) DEFAULT NULL,
  `unit_price_per_minute` decimal(10,2) DEFAULT NULL,
  `up_price` decimal(10,2) DEFAULT NULL,
  `up_price_start_mile` int(11) DEFAULT NULL,
  `morning_peak_time_on` varchar(8) DEFAULT NULL,
  `morning_peak_time_off` varchar(8) DEFAULT NULL,
  `evening_peak_time_on` varchar(8) DEFAULT NULL,
  `evening_peak_time_off` varchar(8) DEFAULT NULL,
  `other_peak_time_on` varchar(8) DEFAULT NULL,
  `other_peak_time_off` varchar(8) DEFAULT NULL,
  `peak_unit_price` decimal(10,2) DEFAULT NULL,
  `peak_price_start_mile` decimal(10,2) DEFAULT NULL,
  `low_speed_price_per_minute` decimal(10,2) DEFAULT NULL,
  `night_price_per_mile` decimal(10,2) DEFAULT NULL,
  `night_price_per_minute` decimal(10,2) DEFAULT NULL,
  `other_price` varchar(10) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网约车平台公司运价信息';

-- ----------------------------
-- Records of company_fare
-- ----------------------------
INSERT INTO `company_fare` VALUES ('1', '1', '340100', '1', '付款', '1', '1', '13.00', '2.00', '2.00', '1.00', '2.00', '1', '1', '2', '9', '10', '8', '9', '3.00', '5.00', '5.00', '6.00', '7.00', '2', '1', '20170410101010', '0');
INSERT INTO `company_fare` VALUES ('2', '2', '340100', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `company_name` varchar(256) DEFAULT NULL,
  `identifier` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `business_scope` varchar(256) DEFAULT NULL,
  `contact_address` varchar(256) DEFAULT NULL,
  `economic_type` varchar(128) DEFAULT NULL,
  `reg_capital` varchar(128) DEFAULT NULL,
  `legal_name` varchar(256) DEFAULT NULL,
  `legal_ID` varchar(32) DEFAULT NULL,
  `legal_phone` varchar(32) DEFAULT NULL,
  `legal_photo` varchar(128) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网约车平台公司基本信息';

-- ----------------------------
-- Records of company_info
-- ----------------------------
INSERT INTO `company_info` VALUES ('1', '1', '滴滴', '1', '340100', '1', '01089898989', '2', '1', '北京市滴滴有限公司', '23412', '01067676767', '1', '1', '1', '20170410121212');
INSERT INTO `company_info` VALUES ('2', '2', '易到', '1', '340100', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for company_pay
-- ----------------------------
DROP TABLE IF EXISTS `company_pay`;
CREATE TABLE `company_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `pay_name` varchar(256) DEFAULT NULL,
  `pay_id` varchar(32) DEFAULT NULL,
  `pay_type` varchar(64) DEFAULT NULL,
  `pay_scope` varchar(64) DEFAULT NULL,
  `prepare_bank` varchar(256) DEFAULT NULL,
  `count_date` varchar(10) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网约车平台公司支付信息';

-- ----------------------------
-- Records of company_pay
-- ----------------------------
INSERT INTO `company_pay` VALUES ('1', '1', '中国建设银行', '1', '1', '1', '1', '2', '0', '0', '20170410101010');
INSERT INTO `company_pay` VALUES ('2', '2', '支付宝', '1', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for company_permit
-- ----------------------------
DROP TABLE IF EXISTS `company_permit`;
CREATE TABLE `company_permit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `certificate` varchar(64) DEFAULT NULL,
  `operation_area` varchar(128) DEFAULT NULL,
  `owner_name` varchar(256) DEFAULT NULL,
  `organization` varchar(256) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `stop_date` int(11) DEFAULT NULL,
  `certify_date` int(11) DEFAULT NULL,
  `state` varchar(8) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网约车平台公司经营许可';

-- ----------------------------
-- Records of company_permit
-- ----------------------------
INSERT INTO `company_permit` VALUES ('1', '1', '340100', '342422', '北京', '柳青', '北京市公安局', '20121233', '20170430', '20120923', '0', '1', '20170122');
INSERT INTO `company_permit` VALUES ('2', '2', '340100', '342422', '合肥', '王那', null, '20130817', null, null, '0', '2', '20160823');

-- ----------------------------
-- Table structure for company_scale
-- ----------------------------
DROP TABLE IF EXISTS `company_scale`;
CREATE TABLE `company_scale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `vehicle_num` varchar(64) DEFAULT NULL,
  `driver_num` varchar(64) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网约车平台公司营运规模信息';

-- ----------------------------
-- Records of company_scale
-- ----------------------------
INSERT INTO `company_scale` VALUES ('1', '1', '3000', '3500', '0', '20170410101010');
INSERT INTO `company_scale` VALUES ('2', '2', '2000', '2900', null, null);

-- ----------------------------
-- Table structure for company_service
-- ----------------------------
DROP TABLE IF EXISTS `company_service`;
CREATE TABLE `company_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `service_name` varchar(128) DEFAULT NULL,
  `service_no` varchar(64) DEFAULT NULL,
  `detail_address` varchar(128) DEFAULT NULL,
  `responsible_name` varchar(128) DEFAULT NULL,
  `responsible_phone` varchar(32) DEFAULT NULL,
  `manager_name` varchar(64) DEFAULT NULL,
  `manager_phone` varchar(32) DEFAULT NULL,
  `contact_phone` varchar(32) DEFAULT NULL,
  `mail_address` varchar(128) DEFAULT NULL,
  `create_date` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网约车平台公司服务机构';

-- ----------------------------
-- Records of company_service
-- ----------------------------
INSERT INTO `company_service` VALUES ('1', '1', '340100', '支付宝', '010', '北京市朝阳区和平里街道', '张三', '0108989898989', '李四', '01067676767', '01045454545', '北京市朝阳区太阳宫', '20170430', '0', '0', '20170410101010');
INSERT INTO `company_service` VALUES ('2', '2', '340100', '中国建设银行', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for dict_info
-- ----------------------------
DROP TABLE IF EXISTS `dict_info`;
CREATE TABLE `dict_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_info
-- ----------------------------
INSERT INTO `dict_info` VALUES ('1', '100', '内资', 'economic_type');
INSERT INTO `dict_info` VALUES ('2', '110', '国有全资', 'economic_type');
INSERT INTO `dict_info` VALUES ('3', '120', '集体全资', 'economic_type');
INSERT INTO `dict_info` VALUES ('4', '130', '股份合作', 'economic_type');
INSERT INTO `dict_info` VALUES ('5', '140', '联营', 'economic_type');
INSERT INTO `dict_info` VALUES ('6', '141', '国有联营', 'economic_type');
INSERT INTO `dict_info` VALUES ('7', '142', '集体联营', 'economic_type');
INSERT INTO `dict_info` VALUES ('8', '143', '国有与集体联营', 'economic_type');
INSERT INTO `dict_info` VALUES ('9', '149', '其他联营', 'economic_type');
INSERT INTO `dict_info` VALUES ('10', '150', '有限责任（公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('11', '151', '国有肚子（公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('12', '159', '其他有限责任(公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('13', '160', '股份有限（公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('14', '170', '私有', 'economic_type');
INSERT INTO `dict_info` VALUES ('15', '171', '私有独资', 'economic_type');
INSERT INTO `dict_info` VALUES ('16', '172', '私有合伙', 'economic_type');
INSERT INTO `dict_info` VALUES ('17', '173', '私营有限责任(公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('18', '174', '私营股份有限（公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('19', '175', '个体经营', 'economic_type');
INSERT INTO `dict_info` VALUES ('20', '179', '其他私有', 'economic_type');
INSERT INTO `dict_info` VALUES ('21', '190', '其他内资', 'economic_type');
INSERT INTO `dict_info` VALUES ('22', '200', '港、澳、台投资', 'economic_type');
INSERT INTO `dict_info` VALUES ('23', '210', '内地和港、澳、台合资', 'economic_type');
INSERT INTO `dict_info` VALUES ('24', '220', '内地和港、澳、台合作', 'economic_type');
INSERT INTO `dict_info` VALUES ('25', '230', '港、澳、台独资', 'economic_type');
INSERT INTO `dict_info` VALUES ('26', '240', '港、澳、台投资股份有限（公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('27', '290', '其他港、澳、台投资', 'economic_type');
INSERT INTO `dict_info` VALUES ('28', '300', '国外投资', 'economic_type');
INSERT INTO `dict_info` VALUES ('29', '310', '中外合资', 'economic_type');
INSERT INTO `dict_info` VALUES ('30', '320', '中外合作', 'economic_type');
INSERT INTO `dict_info` VALUES ('31', '330', '外资', 'economic_type');
INSERT INTO `dict_info` VALUES ('32', '340', '国外投资股份有限（公司）', 'economic_type');
INSERT INTO `dict_info` VALUES ('33', '390', '其他国外投资', 'economic_type');
INSERT INTO `dict_info` VALUES ('34', '900', '其他', 'economic_type');
INSERT INTO `dict_info` VALUES ('35', '1', '有效', 'cert_state');
INSERT INTO `dict_info` VALUES ('36', '2', '无效', 'cert_state');
INSERT INTO `dict_info` VALUES ('37', '1', '蓝色', 'car_color');
INSERT INTO `dict_info` VALUES ('38', '2', '黄色', 'car_color');
INSERT INTO `dict_info` VALUES ('39', '3', '黑色', 'car_color');
INSERT INTO `dict_info` VALUES ('40', '4', '白色', 'car_color');
INSERT INTO `dict_info` VALUES ('41', '9', '其他', 'car_color');
INSERT INTO `dict_info` VALUES ('42', '1', '汽油', 'fuel_type');
INSERT INTO `dict_info` VALUES ('43', '2', '柴油', 'fuel_type');
INSERT INTO `dict_info` VALUES ('44', '3', '天然气', 'fuel_type');
INSERT INTO `dict_info` VALUES ('45', '4', '液化气', 'fuel_type');
INSERT INTO `dict_info` VALUES ('46', '5', '电动', 'fuel_type');
INSERT INTO `dict_info` VALUES ('47', '9', '其他', 'fuel_type');
INSERT INTO `dict_info` VALUES ('48', '0', '未年审', 'inspect_state');
INSERT INTO `dict_info` VALUES ('49', '1', '年审合格', 'inspect_state');
INSERT INTO `dict_info` VALUES ('50', '2', '年审不合格', 'inspect_state');
INSERT INTO `dict_info` VALUES ('51', '0', '未知性别', 'sex_type');
INSERT INTO `dict_info` VALUES ('52', '1', '男性', 'sex_type');
INSERT INTO `dict_info` VALUES ('53', '2', '女性', 'sex_type');
INSERT INTO `dict_info` VALUES ('54', '9', '未说明性别', 'sex_type');
INSERT INTO `dict_info` VALUES ('55', '15', '土家族', 'nation_type');
INSERT INTO `dict_info` VALUES ('56', '30', '土族', 'nation_type');
INSERT INTO `dict_info` VALUES ('57', '54', '门巴族', 'nation_type');
INSERT INTO `dict_info` VALUES ('58', '25', '水族', 'nation_type');
INSERT INTO `dict_info` VALUES ('59', '36', '毛南族', 'nation_type');
INSERT INTO `dict_info` VALUES ('60', '43', ' 乌孜别克族', 'nation_type');
INSERT INTO `dict_info` VALUES ('61', '09', '布依族', 'nation_type');
INSERT INTO `dict_info` VALUES ('62', '34', '布朗族', 'nation_type');
INSERT INTO `dict_info` VALUES ('63', '26', '东乡族', 'nation_type');
INSERT INTO `dict_info` VALUES ('64', '37', '仡佬族', 'nation_type');
INSERT INTO `dict_info` VALUES ('65', '32', '仫佬族', 'nation_type');
INSERT INTO `dict_info` VALUES ('66', '14', '白族', 'nation_type');
INSERT INTO `dict_info` VALUES ('67', '01', '汉族', 'nation_type');
INSERT INTO `dict_info` VALUES ('68', '31', '达斡尔族', 'nation_type');
INSERT INTO `dict_info` VALUES ('69', '03', '回族', 'nation_type');
INSERT INTO `dict_info` VALUES ('70', '21', '佤族', 'nation_type');
INSERT INTO `dict_info` VALUES ('71', '08', '壮族', 'nation_type');
INSERT INTO `dict_info` VALUES ('72', '33', '羌族', 'nation_type');
INSERT INTO `dict_info` VALUES ('73', '39', '阿昌族', 'nation_type');
INSERT INTO `dict_info` VALUES ('74', '27', '纳西族', 'nation_type');
INSERT INTO `dict_info` VALUES ('75', '24', '拉祜族', 'nation_type');
INSERT INTO `dict_info` VALUES ('76', '06', '苗族', 'nation_type');
INSERT INTO `dict_info` VALUES ('77', '12', '侗族', 'nation_type');
INSERT INTO `dict_info` VALUES ('78', '49', '京族', 'nation_type');
INSERT INTO `dict_info` VALUES ('79', '29', '柯尔克孜族', 'nation_type');
INSERT INTO `dict_info` VALUES ('80', '16', '哈尼族', 'nation_type');
INSERT INTO `dict_info` VALUES ('81', '17', '哈萨克族', 'nation_type');
INSERT INTO `dict_info` VALUES ('82', '47', '保安族', 'nation_type');
INSERT INTO `dict_info` VALUES ('83', '44', '俄罗斯族', 'nation_type');
INSERT INTO `dict_info` VALUES ('84', '51', '独龙族', 'nation_type');
INSERT INTO `dict_info` VALUES ('85', '42', '怒族', 'nation_type');
INSERT INTO `dict_info` VALUES ('86', '55', '珞巴族', 'nation_type');
INSERT INTO `dict_info` VALUES ('87', '23', '高山族', 'nation_type');
INSERT INTO `dict_info` VALUES ('88', '56', '基诺族', 'nation_type');
INSERT INTO `dict_info` VALUES ('90', '45', '鄂温克族', 'nation_type');
INSERT INTO `dict_info` VALUES ('91', '05', '维吾尔族', 'nation_type');
INSERT INTO `dict_info` VALUES ('92', '41', '塔吉克族', 'nation_type');
INSERT INTO `dict_info` VALUES ('93', '50', '塔塔尔族', 'nation_type');
INSERT INTO `dict_info` VALUES ('94', '10', '朝鲜族', 'nation_type');
INSERT INTO `dict_info` VALUES ('95', '28', '景颇族', 'nation_type');
INSERT INTO `dict_info` VALUES ('96', '18', '傣族', 'nation_type');
INSERT INTO `dict_info` VALUES ('97', '20', '傈僳族', 'nation_type');
INSERT INTO `dict_info` VALUES ('98', '22', '畲族', 'nation_type');
INSERT INTO `dict_info` VALUES ('99', '40', '普米族', 'nation_type');
INSERT INTO `dict_info` VALUES ('100', '48', '裕固族', 'nation_type');
INSERT INTO `dict_info` VALUES ('101', '02', '蒙古族', 'nation_type');
INSERT INTO `dict_info` VALUES ('102', '38', '锡伯族', 'nation_type');
INSERT INTO `dict_info` VALUES ('103', '11', '满族', 'nation_type');
INSERT INTO `dict_info` VALUES ('104', '13', '瑶族', 'nation_type');
INSERT INTO `dict_info` VALUES ('105', '53', '赫哲族', 'nation_type');
INSERT INTO `dict_info` VALUES ('106', '35', '撒拉族', 'nation_type');
INSERT INTO `dict_info` VALUES ('107', '46', '德昂族', 'nation_type');
INSERT INTO `dict_info` VALUES ('108', '19', '黎族', 'nation_type');
INSERT INTO `dict_info` VALUES ('109', '04', '藏族', 'nation_type');
INSERT INTO `dict_info` VALUES ('110', '07', '彝族', 'nation_type');
INSERT INTO `dict_info` VALUES ('114', '52', '鄂伦春族', 'nation_type');
INSERT INTO `dict_info` VALUES ('115', '10', '研究生教育', 'edu_type');
INSERT INTO `dict_info` VALUES ('116', '11', '博士研究生毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('117', '12', '博士研究生结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('118', '13', '博士研究生肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('119', '14', '硕士研究生毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('120', '15', '硕士研究生结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('121', '16', '硕士研究生肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('122', '17', '研究生班毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('123', '18', '研究生班结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('124', '19', '研究生班肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('125', '20', '大学本科教育', 'edu_type');
INSERT INTO `dict_info` VALUES ('126', '30', '大学专科教育', 'edu_type');
INSERT INTO `dict_info` VALUES ('127', '21', '大学本科毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('128', '22', '大学本科结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('129', '23', '大学本科肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('130', '28', '大学普通班毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('131', '31', '大学专科毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('132', '32', '大学专科结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('133', '33', '大学专科肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('134', '40', '中等职业教育', 'edu_type');
INSERT INTO `dict_info` VALUES ('135', '41', '中等专科毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('136', '42', '中等专科结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('137', '43', '中等专科肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('138', '44', '职业高中毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('139', '45', '职业高中结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('140', '46', '职业高中肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('141', '47', '技工学校毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('142', '48', '技工学校结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('143', '49', '技工学校肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('144', '60', '普通高级中学教育', 'edu_type');
INSERT INTO `dict_info` VALUES ('145', '61', '普通高中毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('146', '62', '普通高中结业', 'edu_type');
INSERT INTO `dict_info` VALUES ('147', '63', '普通高中肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('148', '80', '小学教育', 'edu_type');
INSERT INTO `dict_info` VALUES ('149', '81', '小学毕业', 'edu_type');
INSERT INTO `dict_info` VALUES ('150', '82', '小学肄业', 'edu_type');
INSERT INTO `dict_info` VALUES ('151', '90', '其他', 'edu_type');

-- ----------------------------
-- Table structure for driver_app
-- ----------------------------
DROP TABLE IF EXISTS `driver_app`;
CREATE TABLE `driver_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `driver_phone` varchar(32) DEFAULT NULL,
  `net_type` int(11) DEFAULT NULL COMMENT '1:中国联通\r\n            2:中国移动\r\n            3:中国电信\r\n            4:其他',
  `app_version` varchar(32) DEFAULT NULL,
  `map_type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='驾驶员移动终端信息';

-- ----------------------------
-- Records of driver_app
-- ----------------------------
INSERT INTO `driver_app` VALUES ('1', '1', '340100', '1', '01089898989', '1', '001', '1', '1', '1', '20170430101010');
INSERT INTO `driver_app` VALUES ('2', '2', '340100', '1', '01089898982', '1', '12', '1', '1', '0', null);

-- ----------------------------
-- Table structure for driver_educate
-- ----------------------------
DROP TABLE IF EXISTS `driver_educate`;
CREATE TABLE `driver_educate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `course_name` varchar(64) DEFAULT NULL,
  `course_date` int(11) DEFAULT NULL,
  `start_time` varchar(8) DEFAULT NULL,
  `stop_time` varchar(8) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `updateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='驾驶员培训信息';

-- ----------------------------
-- Records of driver_educate
-- ----------------------------
INSERT INTO `driver_educate` VALUES ('1', '1', '340100', '1', 'c1', '20170430', '20170430', '20170530', '30', '1', '20170430101010');
INSERT INTO `driver_educate` VALUES ('2', '2', '340100', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for driver_info
-- ----------------------------
DROP TABLE IF EXISTS `driver_info`;
CREATE TABLE `driver_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `driver_name` varchar(64) DEFAULT NULL,
  `driver_phone` varchar(32) DEFAULT NULL,
  `driver_gender` varchar(2) DEFAULT NULL,
  `driver_birthday` int(11) DEFAULT NULL,
  `driver_nationality` varchar(32) DEFAULT NULL,
  `driver_nation` varchar(32) DEFAULT NULL,
  `driver_marital_status` varchar(64) DEFAULT NULL,
  `driver_language_level` varchar(64) DEFAULT NULL,
  `driver_education` varchar(64) DEFAULT NULL,
  `driver_census` varchar(256) DEFAULT NULL,
  `driver_address` varchar(256) DEFAULT NULL,
  `driver_contact_address` varchar(256) DEFAULT NULL,
  `photo_id` varchar(128) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `license_photo_id` varchar(128) DEFAULT NULL,
  `driver_type` varchar(16) DEFAULT NULL,
  `get_driver_license_date` int(11) DEFAULT NULL,
  `driver_license_on` int(11) DEFAULT NULL,
  `driver_license_off` int(11) DEFAULT NULL,
  `taxi_driver` int(11) DEFAULT NULL,
  `certificate_no` varchar(128) DEFAULT NULL,
  `network_car_issue_organization` varchar(256) DEFAULT NULL,
  `network_car_issue_date` int(11) DEFAULT NULL,
  `get_network_car_proof_date` int(11) DEFAULT NULL,
  `network_car_proof_on` int(11) DEFAULT NULL,
  `network_car_proof_off` int(11) DEFAULT NULL,
  `register_date` int(11) DEFAULT NULL,
  `fullTime_driver` int(11) DEFAULT NULL,
  `in_driver_blacklist` int(11) DEFAULT NULL,
  `commercial_type` int(11) DEFAULT NULL COMMENT '1：网络预约出租车\r\n            2：巡游出租车\r\n            3：私人小客车合乘',
  `contract_company` varchar(256) DEFAULT NULL,
  `contract_on` int(11) DEFAULT NULL,
  `contract_off` int(11) DEFAULT NULL,
  `emergency_contact` varchar(64) DEFAULT NULL,
  `emergency_contact_phone` varchar(32) DEFAULT NULL,
  `emergency_contact_address` varchar(256) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='驾驶员基本信息';

-- ----------------------------
-- Records of driver_info
-- ----------------------------
INSERT INTO `driver_info` VALUES ('1', '1', '340100', '张三', '123456', '1', '19691116', '1', '1', '1', '1', '大专', '4', '合肥', '222', '1', '1', '1', '1', '20170520', '1', '1', '1', '1', '1', '1', '1', '1', '1', '20170520', '1', '0', '1', '公司', '20150410', '20300908', '张三', '01089898989', '合肥市', '0', '1', '20170410101010');
INSERT INTO `driver_info` VALUES ('2', '2', '340100', '王二', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for driver_position
-- ----------------------------
DROP TABLE IF EXISTS `driver_position`;
CREATE TABLE `driver_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `driver_region_code` int(11) DEFAULT NULL COMMENT '驾驶员报备地行政区划代码，地市级，应符合GB/T2260',
  `vehicle_no` varchar(32) DEFAULT NULL,
  `position_time` bigint(20) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `encrypt` int(11) DEFAULT NULL COMMENT '1：GCJ-02 测绘局标准\r\n            2：WGS84 GPS标准\r\n            3：BD-09 百度标准\r\n            4：CGCS2000 北斗标准\r\n            0：其他\r\n            ',
  `direction` decimal(5,2) DEFAULT NULL COMMENT '0-359，顺时针方向',
  `elevation` decimal(6,2) DEFAULT NULL,
  `speed` decimal(5,2) DEFAULT NULL COMMENT '单位：公里每小时(km/h)',
  `biz_status` int(11) DEFAULT NULL COMMENT '1：载客\r\n            2：接单\r\n            3：空驶\r\n            4：停运\r\n            ',
  `order_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='驾驶员定位信息';

-- ----------------------------
-- Records of driver_position
-- ----------------------------
INSERT INTO `driver_position` VALUES ('1', '1', '1', '340100', '100', '20170401', '23', '67', '1', '1.00', '10.00', '1.00', '1', '1');

-- ----------------------------
-- Table structure for driver_punish
-- ----------------------------
DROP TABLE IF EXISTS `driver_punish`;
CREATE TABLE `driver_punish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `punish_time` bigint(20) DEFAULT NULL,
  `punish_reason` varchar(128) DEFAULT NULL,
  `punish_result` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of driver_punish
-- ----------------------------
INSERT INTO `driver_punish` VALUES ('1', '1', '1', '20160420111111', '未按时接到乘客', '已处理');
INSERT INTO `driver_punish` VALUES ('2', '1', '1', '1', '2', '2');

-- ----------------------------
-- Table structure for driver_reputation
-- ----------------------------
DROP TABLE IF EXISTS `driver_reputation`;
CREATE TABLE `driver_reputation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `test_date` int(11) DEFAULT NULL,
  `test_department` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='驾驶员信誉信息';

-- ----------------------------
-- Records of driver_reputation
-- ----------------------------
INSERT INTO `driver_reputation` VALUES ('1', '1', '1', '2', '1', '1');

-- ----------------------------
-- Table structure for driver_stat_info
-- ----------------------------
DROP TABLE IF EXISTS `driver_stat_info`;
CREATE TABLE `driver_stat_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `order_count` varchar(10) DEFAULT NULL,
  `traffic_violation_count` varchar(32) DEFAULT NULL,
  `complained_count` varchar(32) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='网约车驾驶员统计信息';

-- ----------------------------
-- Records of driver_stat_info
-- ----------------------------
INSERT INTO `driver_stat_info` VALUES ('1', '1', '340100', '1', '10', '80', '3', '3', '0', '20170410101010');
INSERT INTO `driver_stat_info` VALUES ('2', '2', '340100', '1', '6', '70', '3', '3', '1', '20170410');

-- ----------------------------
-- Table structure for fence
-- ----------------------------
DROP TABLE IF EXISTS `fence`;
CREATE TABLE `fence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `shape` int(11) DEFAULT NULL COMMENT '0 圆形 1 多边形',
  `radius` double DEFAULT NULL,
  `purpose` varchar(64) DEFAULT NULL,
  `spots` text,
  `createTime` date DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 停用 1 启用',
  `type` int(11) DEFAULT NULL COMMENT '1区围栏，2普通出入围栏，3聚集告警围栏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fence
-- ----------------------------
INSERT INTO `fence` VALUES ('1', '340102', null, null, null, null, '[{\"lng\":117.300015,\"lat\":31.86272},{\"lng\":117.300026,\"lat\":31.864153},{\"lng\":117.300022,\"lat\":31.864196},{\"lng\":117.300027,\"lat\":31.864249},{\"lng\":117.30004,\"lat\":31.865977},{\"lng\":117.299966,\"lat\":31.868197},{\"lng\":117.299695,\"lat\":31.86869},{\"lng\":117.298978,\"lat\":31.86938},{\"lng\":117.295936,\"lat\":31.871078},{\"lng\":117.294518,\"lat\":31.872686},{\"lng\":117.294406,\"lat\":31.873},{\"lng\":117.294434,\"lat\":31.873107},{\"lng\":117.294449,\"lat\":31.873155},{\"lng\":117.294457,\"lat\":31.873203},{\"lng\":117.294555,\"lat\":31.873592},{\"lng\":117.294852,\"lat\":31.874259},{\"lng\":117.29474,\"lat\":31.874906},{\"lng\":117.29398,\"lat\":31.876053},{\"lng\":117.293822,\"lat\":31.876262},{\"lng\":117.293763,\"lat\":31.876325},{\"lng\":117.293699,\"lat\":31.876417},{\"lng\":117.293665,\"lat\":31.87647},{\"lng\":117.292794,\"lat\":31.877624},{\"lng\":117.2923,\"lat\":31.877938},{\"lng\":117.290318,\"lat\":31.879059},{\"lng\":117.29013,\"lat\":31.879309},{\"lng\":117.290058,\"lat\":31.879704},{\"lng\":117.290183,\"lat\":31.880037},{\"lng\":117.290683,\"lat\":31.880538},{\"lng\":117.290903,\"lat\":31.880819},{\"lng\":117.290948,\"lat\":31.881461},{\"lng\":117.290765,\"lat\":31.881803},{\"lng\":117.290337,\"lat\":31.882273},{\"lng\":117.290486,\"lat\":31.883533},{\"lng\":117.290354,\"lat\":31.884326},{\"lng\":117.290347,\"lat\":31.885309},{\"lng\":117.289258,\"lat\":31.888515},{\"lng\":117.288863,\"lat\":31.889736},{\"lng\":117.288263,\"lat\":31.891454},{\"lng\":117.288102,\"lat\":31.89218},{\"lng\":117.288211,\"lat\":31.892901},{\"lng\":117.288494,\"lat\":31.893199},{\"lng\":117.2929,\"lat\":31.896713},{\"lng\":117.296437,\"lat\":31.89883},{\"lng\":117.297875,\"lat\":31.89944},{\"lng\":117.298397,\"lat\":31.899532},{\"lng\":117.298498,\"lat\":31.900609},{\"lng\":117.298775,\"lat\":31.900866},{\"lng\":117.299443,\"lat\":31.901217},{\"lng\":117.299584,\"lat\":31.901514},{\"lng\":117.299385,\"lat\":31.90164},{\"lng\":117.29871,\"lat\":31.90161},{\"lng\":117.298477,\"lat\":31.901698},{\"lng\":117.298268,\"lat\":31.901963},{\"lng\":117.298135,\"lat\":31.902523},{\"lng\":117.297706,\"lat\":31.902805},{\"lng\":117.297769,\"lat\":31.903113},{\"lng\":117.298249,\"lat\":31.903507},{\"lng\":117.298443,\"lat\":31.903821},{\"lng\":117.298534,\"lat\":31.904233},{\"lng\":117.298419,\"lat\":31.904536},{\"lng\":117.297816,\"lat\":31.904846},{\"lng\":117.297476,\"lat\":31.905125},{\"lng\":117.296972,\"lat\":31.905122},{\"lng\":117.296483,\"lat\":31.905321},{\"lng\":117.295755,\"lat\":31.905867},{\"lng\":117.295064,\"lat\":31.906162},{\"lng\":117.295045,\"lat\":31.906364},{\"lng\":117.295333,\"lat\":31.906887},{\"lng\":117.295495,\"lat\":31.907517},{\"lng\":117.295333,\"lat\":31.908079},{\"lng\":117.294993,\"lat\":31.90886},{\"lng\":117.294396,\"lat\":31.909451},{\"lng\":117.294264,\"lat\":31.909686},{\"lng\":117.294286,\"lat\":31.910028},{\"lng\":117.294556,\"lat\":31.91083},{\"lng\":117.294539,\"lat\":31.911538},{\"lng\":117.294973,\"lat\":31.912174},{\"lng\":117.29479,\"lat\":31.913684},{\"lng\":117.294526,\"lat\":31.914577},{\"lng\":117.294527,\"lat\":31.914792},{\"lng\":117.295139,\"lat\":31.915285},{\"lng\":117.296213,\"lat\":31.915814},{\"lng\":117.296497,\"lat\":31.915904},{\"lng\":117.296958,\"lat\":31.916014},{\"lng\":117.297232,\"lat\":31.916115},{\"lng\":117.29731,\"lat\":31.916303},{\"lng\":117.297224,\"lat\":31.916764},{\"lng\":117.297389,\"lat\":31.917107},{\"lng\":117.298093,\"lat\":31.917646},{\"lng\":117.298969,\"lat\":31.918031},{\"lng\":117.299509,\"lat\":31.918266},{\"lng\":117.299634,\"lat\":31.918469},{\"lng\":117.299485,\"lat\":31.918679},{\"lng\":117.299259,\"lat\":31.919014},{\"lng\":117.299188,\"lat\":31.919451},{\"lng\":117.299274,\"lat\":31.919803},{\"lng\":117.299235,\"lat\":31.920193},{\"lng\":117.299196,\"lat\":31.920583},{\"lng\":117.298977,\"lat\":31.921426},{\"lng\":117.298688,\"lat\":31.921933},{\"lng\":117.297976,\"lat\":31.922666},{\"lng\":117.297608,\"lat\":31.922907},{\"lng\":117.297225,\"lat\":31.923039},{\"lng\":117.296998,\"lat\":31.923234},{\"lng\":117.296896,\"lat\":31.923585},{\"lng\":117.296867,\"lat\":31.924026},{\"lng\":117.29689,\"lat\":31.924526},{\"lng\":117.296726,\"lat\":31.924785},{\"lng\":117.295656,\"lat\":31.924683},{\"lng\":117.295393,\"lat\":31.924818},{\"lng\":117.295314,\"lat\":31.925031},{\"lng\":117.295382,\"lat\":31.925312},{\"lng\":117.295615,\"lat\":31.925556},{\"lng\":117.295839,\"lat\":31.925639},{\"lng\":117.295946,\"lat\":31.92562},{\"lng\":117.296323,\"lat\":31.925569},{\"lng\":117.296581,\"lat\":31.925619},{\"lng\":117.296794,\"lat\":31.92579},{\"lng\":117.296868,\"lat\":31.925839},{\"lng\":117.297004,\"lat\":31.926176},{\"lng\":117.297011,\"lat\":31.92657},{\"lng\":117.296855,\"lat\":31.92711},{\"lng\":117.296346,\"lat\":31.927908},{\"lng\":117.29631,\"lat\":31.928107},{\"lng\":117.296444,\"lat\":31.928397},{\"lng\":117.297007,\"lat\":31.929106},{\"lng\":117.297186,\"lat\":31.92951},{\"lng\":117.297116,\"lat\":31.929678},{\"lng\":117.296682,\"lat\":31.929818},{\"lng\":117.296557,\"lat\":31.929961},{\"lng\":117.296577,\"lat\":31.930179},{\"lng\":117.296854,\"lat\":31.930752},{\"lng\":117.296688,\"lat\":31.931566},{\"lng\":117.296433,\"lat\":31.931788},{\"lng\":117.295624,\"lat\":31.931507},{\"lng\":117.295075,\"lat\":31.931536},{\"lng\":117.294951,\"lat\":31.932028},{\"lng\":117.295279,\"lat\":31.93255},{\"lng\":117.293979,\"lat\":31.933012},{\"lng\":117.293778,\"lat\":31.933289},{\"lng\":117.293774,\"lat\":31.933781},{\"lng\":117.293911,\"lat\":31.933958},{\"lng\":117.294574,\"lat\":31.934064},{\"lng\":117.294825,\"lat\":31.934242},{\"lng\":117.29496,\"lat\":31.934571},{\"lng\":117.294982,\"lat\":31.935263},{\"lng\":117.295174,\"lat\":31.935597},{\"lng\":117.295371,\"lat\":31.935601},{\"lng\":117.296336,\"lat\":31.935084},{\"lng\":117.296591,\"lat\":31.935039},{\"lng\":117.297048,\"lat\":31.93523},{\"lng\":117.297452,\"lat\":31.935702},{\"lng\":117.297587,\"lat\":31.936118},{\"lng\":117.297514,\"lat\":31.936478},{\"lng\":117.297083,\"lat\":31.936968},{\"lng\":117.296561,\"lat\":31.937212},{\"lng\":117.296461,\"lat\":31.937444},{\"lng\":117.29688,\"lat\":31.938108},{\"lng\":117.297061,\"lat\":31.938681},{\"lng\":117.29725,\"lat\":31.939027},{\"lng\":117.302346,\"lat\":31.939499},{\"lng\":117.307876,\"lat\":31.939675},{\"lng\":117.310973,\"lat\":31.939971},{\"lng\":117.314009,\"lat\":31.940041},{\"lng\":117.316502,\"lat\":31.939985},{\"lng\":117.320953,\"lat\":31.939478},{\"lng\":117.323209,\"lat\":31.939114},{\"lng\":117.326006,\"lat\":31.938177},{\"lng\":117.332871,\"lat\":31.935505},{\"lng\":117.33581,\"lat\":31.93449},{\"lng\":117.338417,\"lat\":31.930549},{\"lng\":117.340666,\"lat\":31.926499},{\"lng\":117.34111,\"lat\":31.925433},{\"lng\":117.3419,\"lat\":31.924556},{\"lng\":117.342318,\"lat\":31.924284},{\"lng\":117.345809,\"lat\":31.923144},{\"lng\":117.346831,\"lat\":31.923122},{\"lng\":117.348801,\"lat\":31.923777},{\"lng\":117.3508,\"lat\":31.925259},{\"lng\":117.353312,\"lat\":31.927819},{\"lng\":117.353697,\"lat\":31.928653},{\"lng\":117.353823,\"lat\":31.929183},{\"lng\":117.354891,\"lat\":31.930573},{\"lng\":117.354895,\"lat\":31.931687},{\"lng\":117.354625,\"lat\":31.932622},{\"lng\":117.354143,\"lat\":31.933299},{\"lng\":117.353504,\"lat\":31.934894},{\"lng\":117.352832,\"lat\":31.935617},{\"lng\":117.352001,\"lat\":31.936817},{\"lng\":117.351926,\"lat\":31.937167},{\"lng\":117.352546,\"lat\":31.940325},{\"lng\":117.353352,\"lat\":31.941265},{\"lng\":117.355105,\"lat\":31.941787},{\"lng\":117.355694,\"lat\":31.941773},{\"lng\":117.358364,\"lat\":31.942182},{\"lng\":117.361886,\"lat\":31.942524},{\"lng\":117.365175,\"lat\":31.942356},{\"lng\":117.367056,\"lat\":31.942559},{\"lng\":117.368471,\"lat\":31.943765},{\"lng\":117.368937,\"lat\":31.94582},{\"lng\":117.369137,\"lat\":31.947542},{\"lng\":117.368999,\"lat\":31.949661},{\"lng\":117.367448,\"lat\":31.952575},{\"lng\":117.366094,\"lat\":31.954867},{\"lng\":117.365758,\"lat\":31.956472},{\"lng\":117.365758,\"lat\":31.957275},{\"lng\":117.365957,\"lat\":31.958077},{\"lng\":117.366362,\"lat\":31.95859},{\"lng\":117.368786,\"lat\":31.959966},{\"lng\":117.372555,\"lat\":31.961692},{\"lng\":117.377538,\"lat\":31.962847},{\"lng\":117.379762,\"lat\":31.963132},{\"lng\":117.38158,\"lat\":31.963534},{\"lng\":117.382322,\"lat\":31.963884},{\"lng\":117.382994,\"lat\":31.964685},{\"lng\":117.383132,\"lat\":31.965767},{\"lng\":117.383124,\"lat\":31.967606},{\"lng\":117.382446,\"lat\":31.975163},{\"lng\":117.382233,\"lat\":31.976126},{\"lng\":117.38267,\"lat\":31.976959},{\"lng\":117.383294,\"lat\":31.977798},{\"lng\":117.385197,\"lat\":31.978406},{\"lng\":117.385712,\"lat\":31.978655},{\"lng\":117.393022,\"lat\":31.978548},{\"lng\":117.393348,\"lat\":31.978606},{\"lng\":117.395095,\"lat\":31.978193},{\"lng\":117.396568,\"lat\":31.976822},{\"lng\":117.397281,\"lat\":31.975522},{\"lng\":117.397172,\"lat\":31.97412},{\"lng\":117.397059,\"lat\":31.97401},{\"lng\":117.397141,\"lat\":31.972703},{\"lng\":117.397515,\"lat\":31.969769},{\"lng\":117.397479,\"lat\":31.969121},{\"lng\":117.40099,\"lat\":31.961781},{\"lng\":117.404078,\"lat\":31.960172},{\"lng\":117.408257,\"lat\":31.959721},{\"lng\":117.408338,\"lat\":31.95981},{\"lng\":117.412966,\"lat\":31.958401},{\"lng\":117.415326,\"lat\":31.955144},{\"lng\":117.419485,\"lat\":31.946654},{\"lng\":117.423539,\"lat\":31.940046},{\"lng\":117.423963,\"lat\":31.936183},{\"lng\":117.427018,\"lat\":31.928308},{\"lng\":117.42886,\"lat\":31.921096},{\"lng\":117.425924,\"lat\":31.918471},{\"lng\":117.420841,\"lat\":31.917267},{\"lng\":117.415179,\"lat\":31.916052},{\"lng\":117.411443,\"lat\":31.914287},{\"lng\":117.41044,\"lat\":31.912313},{\"lng\":117.409375,\"lat\":31.908832},{\"lng\":117.408505,\"lat\":31.902104},{\"lng\":117.40884,\"lat\":31.898606},{\"lng\":117.409158,\"lat\":31.89293},{\"lng\":117.409142,\"lat\":31.889265},{\"lng\":117.409468,\"lat\":31.886755},{\"lng\":117.408698,\"lat\":31.882666},{\"lng\":117.408557,\"lat\":31.882542},{\"lng\":117.408204,\"lat\":31.881852},{\"lng\":117.407987,\"lat\":31.881594},{\"lng\":117.406438,\"lat\":31.880667},{\"lng\":117.40513,\"lat\":31.880253},{\"lng\":117.404462,\"lat\":31.878854},{\"lng\":117.40493,\"lat\":31.877682},{\"lng\":117.405297,\"lat\":31.87622},{\"lng\":117.406137,\"lat\":31.87491},{\"lng\":117.407614,\"lat\":31.874212},{\"lng\":117.40892,\"lat\":31.874163},{\"lng\":117.410924,\"lat\":31.873815},{\"lng\":117.412248,\"lat\":31.873447},{\"lng\":117.41351,\"lat\":31.872766},{\"lng\":117.414199,\"lat\":31.871723},{\"lng\":117.41432,\"lat\":31.870839},{\"lng\":117.41433,\"lat\":31.869738},{\"lng\":117.414239,\"lat\":31.869234},{\"lng\":117.413862,\"lat\":31.868557},{\"lng\":117.412633,\"lat\":31.867262},{\"lng\":117.409517,\"lat\":31.863607},{\"lng\":117.407715,\"lat\":31.861943},{\"lng\":117.40462,\"lat\":31.860512},{\"lng\":117.399658,\"lat\":31.86053},{\"lng\":117.397561,\"lat\":31.859954},{\"lng\":117.393805,\"lat\":31.859626},{\"lng\":117.392345,\"lat\":31.859641},{\"lng\":117.39028,\"lat\":31.858605},{\"lng\":117.38913,\"lat\":31.857858},{\"lng\":117.388559,\"lat\":31.856864},{\"lng\":117.388254,\"lat\":31.85562},{\"lng\":117.38874,\"lat\":31.853885},{\"lng\":117.388507,\"lat\":31.852533},{\"lng\":117.387662,\"lat\":31.849636},{\"lng\":117.38769,\"lat\":31.849131},{\"lng\":117.388703,\"lat\":31.847975},{\"lng\":117.391797,\"lat\":31.847526},{\"lng\":117.396837,\"lat\":31.846035},{\"lng\":117.400738,\"lat\":31.845123},{\"lng\":117.401815,\"lat\":31.844606},{\"lng\":117.402486,\"lat\":31.843865},{\"lng\":117.403227,\"lat\":31.842483},{\"lng\":117.403768,\"lat\":31.841111},{\"lng\":117.404241,\"lat\":31.836989},{\"lng\":117.403836,\"lat\":31.835728},{\"lng\":117.403233,\"lat\":31.83481},{\"lng\":117.400683,\"lat\":31.833149},{\"lng\":117.399339,\"lat\":31.83281},{\"lng\":117.398057,\"lat\":31.832867},{\"lng\":117.392948,\"lat\":31.83343},{\"lng\":117.389993,\"lat\":31.83332},{\"lng\":117.388985,\"lat\":31.832916},{\"lng\":117.388183,\"lat\":31.832287},{\"lng\":117.386571,\"lat\":31.830622},{\"lng\":117.384278,\"lat\":31.828616},{\"lng\":117.382734,\"lat\":31.826726},{\"lng\":117.381328,\"lat\":31.824781},{\"lng\":117.380027,\"lat\":31.821324},{\"lng\":117.379705,\"lat\":31.818399},{\"lng\":117.379955,\"lat\":31.816259},{\"lng\":117.378142,\"lat\":31.816126},{\"lng\":117.376214,\"lat\":31.816197},{\"lng\":117.375102,\"lat\":31.816369},{\"lng\":117.374039,\"lat\":31.816787},{\"lng\":117.3731,\"lat\":31.817624},{\"lng\":117.372655,\"lat\":31.81829},{\"lng\":117.372432,\"lat\":31.819153},{\"lng\":117.372581,\"lat\":31.820066},{\"lng\":117.372803,\"lat\":31.821497},{\"lng\":117.372754,\"lat\":31.822311},{\"lng\":117.372334,\"lat\":31.823915},{\"lng\":117.371568,\"lat\":31.82495},{\"lng\":117.370159,\"lat\":31.825688},{\"lng\":117.367958,\"lat\":31.825857},{\"lng\":117.366697,\"lat\":31.825683},{\"lng\":117.365362,\"lat\":31.825262},{\"lng\":117.363507,\"lat\":31.824346},{\"lng\":117.362543,\"lat\":31.824246},{\"lng\":117.361801,\"lat\":31.824294},{\"lng\":117.361034,\"lat\":31.824515},{\"lng\":117.360268,\"lat\":31.825278},{\"lng\":117.358141,\"lat\":31.827224},{\"lng\":117.356583,\"lat\":31.827912},{\"lng\":117.355173,\"lat\":31.827786},{\"lng\":117.353887,\"lat\":31.827611},{\"lng\":117.35275,\"lat\":31.827634},{\"lng\":117.352082,\"lat\":31.82778},{\"lng\":117.351686,\"lat\":31.828249},{\"lng\":117.350276,\"lat\":31.829948},{\"lng\":117.348397,\"lat\":31.831253},{\"lng\":117.34622,\"lat\":31.832606},{\"lng\":117.343103,\"lat\":31.83371},{\"lng\":117.340159,\"lat\":31.834741},{\"lng\":117.339714,\"lat\":31.835159},{\"lng\":117.33912,\"lat\":31.836071},{\"lng\":117.338824,\"lat\":31.837724},{\"lng\":117.338551,\"lat\":31.839203},{\"lng\":117.338131,\"lat\":31.839819},{\"lng\":117.335657,\"lat\":31.841689},{\"lng\":117.333901,\"lat\":31.842747},{\"lng\":117.332912,\"lat\":31.842942},{\"lng\":117.331353,\"lat\":31.843236},{\"lng\":117.330141,\"lat\":31.843751},{\"lng\":117.328854,\"lat\":31.844711},{\"lng\":117.327445,\"lat\":31.846189},{\"lng\":117.326826,\"lat\":31.84636},{\"lng\":117.326282,\"lat\":31.846211},{\"lng\":117.325639,\"lat\":31.845914},{\"lng\":117.324228,\"lat\":31.84448},{\"lng\":117.323041,\"lat\":31.843713},{\"lng\":117.322002,\"lat\":31.843539},{\"lng\":117.321359,\"lat\":31.843661},{\"lng\":117.31792,\"lat\":31.846171},{\"lng\":117.316758,\"lat\":31.84681},{\"lng\":117.31605,\"lat\":31.847003},{\"lng\":117.316033,\"lat\":31.847007},{\"lng\":117.315943,\"lat\":31.847034},{\"lng\":117.315917,\"lat\":31.847039},{\"lng\":117.312256,\"lat\":31.848036},{\"lng\":117.31185,\"lat\":31.848164},{\"lng\":117.311807,\"lat\":31.84817},{\"lng\":117.311761,\"lat\":31.848192},{\"lng\":117.311242,\"lat\":31.848355},{\"lng\":117.30956,\"lat\":31.849265},{\"lng\":117.307853,\"lat\":31.850372},{\"lng\":117.30774,\"lat\":31.850469},{\"lng\":117.307709,\"lat\":31.850492},{\"lng\":117.30768,\"lat\":31.850519},{\"lng\":117.305529,\"lat\":31.852342},{\"lng\":117.304812,\"lat\":31.853427},{\"lng\":117.304565,\"lat\":31.854487},{\"lng\":117.304837,\"lat\":31.855351},{\"lng\":117.30548,\"lat\":31.856857},{\"lng\":117.305629,\"lat\":31.858066},{\"lng\":117.305456,\"lat\":31.859275},{\"lng\":117.305442,\"lat\":31.859292},{\"lng\":117.305414,\"lat\":31.859343},{\"lng\":117.305406,\"lat\":31.859376},{\"lng\":117.304937,\"lat\":31.860334},{\"lng\":117.304022,\"lat\":31.861345},{\"lng\":117.303008,\"lat\":31.861935},{\"lng\":117.301301,\"lat\":31.862402},{\"lng\":117.300015,\"lat\":31.86272}]', null, null, '瑶海区', null, '1');
INSERT INTO `fence` VALUES ('2', '340103', null, null, null, null, '[{\"lng\":117.29725,\"lat\":31.939027},{\"lng\":117.297061,\"lat\":31.938681},{\"lng\":117.29688,\"lat\":31.938108},{\"lng\":117.296461,\"lat\":31.937444},{\"lng\":117.296561,\"lat\":31.937212},{\"lng\":117.297083,\"lat\":31.936968},{\"lng\":117.297514,\"lat\":31.936478},{\"lng\":117.297587,\"lat\":31.936118},{\"lng\":117.297452,\"lat\":31.935702},{\"lng\":117.297048,\"lat\":31.93523},{\"lng\":117.296591,\"lat\":31.935039},{\"lng\":117.296336,\"lat\":31.935084},{\"lng\":117.295371,\"lat\":31.935601},{\"lng\":117.295174,\"lat\":31.935597},{\"lng\":117.294982,\"lat\":31.935263},{\"lng\":117.29496,\"lat\":31.934571},{\"lng\":117.294825,\"lat\":31.934242},{\"lng\":117.294574,\"lat\":31.934064},{\"lng\":117.293911,\"lat\":31.933958},{\"lng\":117.293774,\"lat\":31.933781},{\"lng\":117.293778,\"lat\":31.933289},{\"lng\":117.293979,\"lat\":31.933012},{\"lng\":117.295279,\"lat\":31.93255},{\"lng\":117.294951,\"lat\":31.932028},{\"lng\":117.295075,\"lat\":31.931536},{\"lng\":117.295624,\"lat\":31.931507},{\"lng\":117.296433,\"lat\":31.931788},{\"lng\":117.296688,\"lat\":31.931566},{\"lng\":117.296854,\"lat\":31.930752},{\"lng\":117.296577,\"lat\":31.930179},{\"lng\":117.296557,\"lat\":31.929961},{\"lng\":117.296682,\"lat\":31.929818},{\"lng\":117.297116,\"lat\":31.929678},{\"lng\":117.297186,\"lat\":31.92951},{\"lng\":117.297007,\"lat\":31.929106},{\"lng\":117.296444,\"lat\":31.928397},{\"lng\":117.29631,\"lat\":31.928107},{\"lng\":117.296346,\"lat\":31.927908},{\"lng\":117.296855,\"lat\":31.92711},{\"lng\":117.297011,\"lat\":31.92657},{\"lng\":117.297004,\"lat\":31.926176},{\"lng\":117.296868,\"lat\":31.925839},{\"lng\":117.296794,\"lat\":31.92579},{\"lng\":117.296581,\"lat\":31.925619},{\"lng\":117.296323,\"lat\":31.925569},{\"lng\":117.295946,\"lat\":31.92562},{\"lng\":117.295839,\"lat\":31.925639},{\"lng\":117.295615,\"lat\":31.925556},{\"lng\":117.295382,\"lat\":31.925312},{\"lng\":117.295314,\"lat\":31.925031},{\"lng\":117.295393,\"lat\":31.924818},{\"lng\":117.295656,\"lat\":31.924683},{\"lng\":117.296726,\"lat\":31.924785},{\"lng\":117.29689,\"lat\":31.924526},{\"lng\":117.296867,\"lat\":31.924026},{\"lng\":117.296896,\"lat\":31.923585},{\"lng\":117.296998,\"lat\":31.923234},{\"lng\":117.297225,\"lat\":31.923039},{\"lng\":117.297608,\"lat\":31.922907},{\"lng\":117.297976,\"lat\":31.922666},{\"lng\":117.298688,\"lat\":31.921933},{\"lng\":117.298977,\"lat\":31.921426},{\"lng\":117.299196,\"lat\":31.920583},{\"lng\":117.299235,\"lat\":31.920193},{\"lng\":117.299274,\"lat\":31.919803},{\"lng\":117.299188,\"lat\":31.919451},{\"lng\":117.299259,\"lat\":31.919014},{\"lng\":117.299485,\"lat\":31.918679},{\"lng\":117.299634,\"lat\":31.918469},{\"lng\":117.299509,\"lat\":31.918266},{\"lng\":117.298969,\"lat\":31.918031},{\"lng\":117.298093,\"lat\":31.917646},{\"lng\":117.297389,\"lat\":31.917107},{\"lng\":117.297224,\"lat\":31.916764},{\"lng\":117.29731,\"lat\":31.916303},{\"lng\":117.297232,\"lat\":31.916115},{\"lng\":117.296958,\"lat\":31.916014},{\"lng\":117.296497,\"lat\":31.915904},{\"lng\":117.296213,\"lat\":31.915814},{\"lng\":117.295139,\"lat\":31.915285},{\"lng\":117.294527,\"lat\":31.914792},{\"lng\":117.294526,\"lat\":31.914577},{\"lng\":117.29479,\"lat\":31.913684},{\"lng\":117.294973,\"lat\":31.912174},{\"lng\":117.294539,\"lat\":31.911538},{\"lng\":117.294556,\"lat\":31.91083},{\"lng\":117.294286,\"lat\":31.910028},{\"lng\":117.294264,\"lat\":31.909686},{\"lng\":117.294396,\"lat\":31.909451},{\"lng\":117.294993,\"lat\":31.90886},{\"lng\":117.295333,\"lat\":31.908079},{\"lng\":117.295495,\"lat\":31.907517},{\"lng\":117.295333,\"lat\":31.906887},{\"lng\":117.295045,\"lat\":31.906364},{\"lng\":117.295064,\"lat\":31.906162},{\"lng\":117.295755,\"lat\":31.905867},{\"lng\":117.296483,\"lat\":31.905321},{\"lng\":117.296972,\"lat\":31.905122},{\"lng\":117.297476,\"lat\":31.905125},{\"lng\":117.297816,\"lat\":31.904846},{\"lng\":117.298419,\"lat\":31.904536},{\"lng\":117.298534,\"lat\":31.904233},{\"lng\":117.298443,\"lat\":31.903821},{\"lng\":117.298249,\"lat\":31.903507},{\"lng\":117.297769,\"lat\":31.903113},{\"lng\":117.297706,\"lat\":31.902805},{\"lng\":117.298135,\"lat\":31.902523},{\"lng\":117.298268,\"lat\":31.901963},{\"lng\":117.298477,\"lat\":31.901698},{\"lng\":117.29871,\"lat\":31.90161},{\"lng\":117.299385,\"lat\":31.90164},{\"lng\":117.299584,\"lat\":31.901514},{\"lng\":117.299443,\"lat\":31.901217},{\"lng\":117.298775,\"lat\":31.900866},{\"lng\":117.298498,\"lat\":31.900609},{\"lng\":117.298397,\"lat\":31.899532},{\"lng\":117.297875,\"lat\":31.89944},{\"lng\":117.296437,\"lat\":31.89883},{\"lng\":117.2929,\"lat\":31.896713},{\"lng\":117.288494,\"lat\":31.893199},{\"lng\":117.288211,\"lat\":31.892901},{\"lng\":117.288102,\"lat\":31.89218},{\"lng\":117.288263,\"lat\":31.891454},{\"lng\":117.288863,\"lat\":31.889736},{\"lng\":117.289258,\"lat\":31.888515},{\"lng\":117.290347,\"lat\":31.885309},{\"lng\":117.290354,\"lat\":31.884326},{\"lng\":117.290486,\"lat\":31.883533},{\"lng\":117.290337,\"lat\":31.882273},{\"lng\":117.290765,\"lat\":31.881803},{\"lng\":117.290948,\"lat\":31.881461},{\"lng\":117.290903,\"lat\":31.880819},{\"lng\":117.290683,\"lat\":31.880538},{\"lng\":117.290183,\"lat\":31.880037},{\"lng\":117.290058,\"lat\":31.879704},{\"lng\":117.29013,\"lat\":31.879309},{\"lng\":117.290318,\"lat\":31.879059},{\"lng\":117.2923,\"lat\":31.877938},{\"lng\":117.292794,\"lat\":31.877624},{\"lng\":117.293665,\"lat\":31.87647},{\"lng\":117.293699,\"lat\":31.876417},{\"lng\":117.293763,\"lat\":31.876325},{\"lng\":117.293822,\"lat\":31.876262},{\"lng\":117.29398,\"lat\":31.876053},{\"lng\":117.29474,\"lat\":31.874906},{\"lng\":117.294852,\"lat\":31.874259},{\"lng\":117.294555,\"lat\":31.873592},{\"lng\":117.294457,\"lat\":31.873203},{\"lng\":117.294449,\"lat\":31.873155},{\"lng\":117.294434,\"lat\":31.873107},{\"lng\":117.294406,\"lat\":31.873},{\"lng\":117.294518,\"lat\":31.872686},{\"lng\":117.295936,\"lat\":31.871078},{\"lng\":117.298978,\"lat\":31.86938},{\"lng\":117.299695,\"lat\":31.86869},{\"lng\":117.299966,\"lat\":31.868197},{\"lng\":117.30004,\"lat\":31.865977},{\"lng\":117.300027,\"lat\":31.864249},{\"lng\":117.300022,\"lat\":31.864196},{\"lng\":117.300026,\"lat\":31.864153},{\"lng\":117.300015,\"lat\":31.86272},{\"lng\":117.299853,\"lat\":31.862463},{\"lng\":117.299836,\"lat\":31.862403},{\"lng\":117.299803,\"lat\":31.862384},{\"lng\":117.298622,\"lat\":31.860512},{\"lng\":117.298597,\"lat\":31.860479},{\"lng\":117.298566,\"lat\":31.860422},{\"lng\":117.298394,\"lat\":31.86015},{\"lng\":117.291656,\"lat\":31.856723},{\"lng\":117.277742,\"lat\":31.853556},{\"lng\":117.276613,\"lat\":31.853692},{\"lng\":117.273715,\"lat\":31.854039},{\"lng\":117.273085,\"lat\":31.854494},{\"lng\":117.273067,\"lat\":31.854505},{\"lng\":117.273054,\"lat\":31.854516},{\"lng\":117.271253,\"lat\":31.855816},{\"lng\":117.269925,\"lat\":31.857591},{\"lng\":117.269748,\"lat\":31.859699},{\"lng\":117.269743,\"lat\":31.859723},{\"lng\":117.269745,\"lat\":31.859742},{\"lng\":117.269663,\"lat\":31.86072},{\"lng\":117.26962,\"lat\":31.860855},{\"lng\":117.269615,\"lat\":31.861286},{\"lng\":117.270082,\"lat\":31.865708},{\"lng\":117.269677,\"lat\":31.868812},{\"lng\":117.268508,\"lat\":31.870371},{\"lng\":117.265896,\"lat\":31.87083},{\"lng\":117.26407,\"lat\":31.871042},{\"lng\":117.263376,\"lat\":31.870807},{\"lng\":117.262594,\"lat\":31.870386},{\"lng\":117.261967,\"lat\":31.870137},{\"lng\":117.261305,\"lat\":31.870119},{\"lng\":117.260601,\"lat\":31.870274},{\"lng\":117.25949,\"lat\":31.871075},{\"lng\":117.258609,\"lat\":31.871689},{\"lng\":117.257947,\"lat\":31.871981},{\"lng\":117.257501,\"lat\":31.87205},{\"lng\":117.256994,\"lat\":31.872075},{\"lng\":117.256659,\"lat\":31.871981},{\"lng\":117.256212,\"lat\":31.871792},{\"lng\":117.255637,\"lat\":31.871912},{\"lng\":117.254916,\"lat\":31.872239},{\"lng\":117.254478,\"lat\":31.872625},{\"lng\":117.2541,\"lat\":31.873097},{\"lng\":117.253834,\"lat\":31.873681},{\"lng\":117.253662,\"lat\":31.873912},{\"lng\":117.25318,\"lat\":31.87395},{\"lng\":117.252261,\"lat\":31.874022},{\"lng\":117.251824,\"lat\":31.874113},{\"lng\":117.250457,\"lat\":31.874256},{\"lng\":117.25043,\"lat\":31.874246},{\"lng\":117.25041,\"lat\":31.874256},{\"lng\":117.25028,\"lat\":31.874256},{\"lng\":117.250254,\"lat\":31.874258},{\"lng\":117.25023,\"lat\":31.874256},{\"lng\":117.249081,\"lat\":31.874258},{\"lng\":117.249059,\"lat\":31.874269},{\"lng\":117.248985,\"lat\":31.874259},{\"lng\":117.247855,\"lat\":31.874261},{\"lng\":117.2475,\"lat\":31.874545},{\"lng\":117.247052,\"lat\":31.875661},{\"lng\":117.246837,\"lat\":31.875951},{\"lng\":117.246112,\"lat\":31.87637},{\"lng\":117.245385,\"lat\":31.876481},{\"lng\":117.245273,\"lat\":31.876404},{\"lng\":117.245138,\"lat\":31.875965},{\"lng\":117.245154,\"lat\":31.874464},{\"lng\":117.244891,\"lat\":31.874081},{\"lng\":117.244044,\"lat\":31.873748},{\"lng\":117.243673,\"lat\":31.873743},{\"lng\":117.243564,\"lat\":31.873913},{\"lng\":117.243596,\"lat\":31.874137},{\"lng\":117.243998,\"lat\":31.874793},{\"lng\":117.243933,\"lat\":31.874939},{\"lng\":117.243728,\"lat\":31.875032},{\"lng\":117.243318,\"lat\":31.874995},{\"lng\":117.242355,\"lat\":31.87445},{\"lng\":117.2421,\"lat\":31.874408},{\"lng\":117.241863,\"lat\":31.874478},{\"lng\":117.241678,\"lat\":31.874836},{\"lng\":117.241526,\"lat\":31.876067},{\"lng\":117.241529,\"lat\":31.8761},{\"lng\":117.24152,\"lat\":31.876112},{\"lng\":117.241006,\"lat\":31.87685},{\"lng\":117.240488,\"lat\":31.877296},{\"lng\":117.239586,\"lat\":31.877809},{\"lng\":117.238754,\"lat\":31.878035},{\"lng\":117.237801,\"lat\":31.878546},{\"lng\":117.237418,\"lat\":31.878603},{\"lng\":117.23706,\"lat\":31.878505},{\"lng\":117.236405,\"lat\":31.877304},{\"lng\":117.236135,\"lat\":31.877001},{\"lng\":117.235796,\"lat\":31.876836},{\"lng\":117.235574,\"lat\":31.876831},{\"lng\":117.235382,\"lat\":31.876934},{\"lng\":117.235076,\"lat\":31.877433},{\"lng\":117.234976,\"lat\":31.878803},{\"lng\":117.234866,\"lat\":31.879144},{\"lng\":117.234277,\"lat\":31.879619},{\"lng\":117.233839,\"lat\":31.879809},{\"lng\":117.233593,\"lat\":31.879811},{\"lng\":117.233301,\"lat\":31.879656},{\"lng\":117.232414,\"lat\":31.878872},{\"lng\":117.231407,\"lat\":31.878593},{\"lng\":117.231067,\"lat\":31.87824},{\"lng\":117.231083,\"lat\":31.878057},{\"lng\":117.231203,\"lat\":31.877967},{\"lng\":117.232266,\"lat\":31.87784},{\"lng\":117.232532,\"lat\":31.877578},{\"lng\":117.232737,\"lat\":31.877153},{\"lng\":117.232715,\"lat\":31.876794},{\"lng\":117.232591,\"lat\":31.876556},{\"lng\":117.232301,\"lat\":31.876266},{\"lng\":117.231637,\"lat\":31.875833},{\"lng\":117.230355,\"lat\":31.876348},{\"lng\":117.228808,\"lat\":31.876304},{\"lng\":117.228429,\"lat\":31.876384},{\"lng\":117.228029,\"lat\":31.876627},{\"lng\":117.227638,\"lat\":31.877115},{\"lng\":117.227518,\"lat\":31.878195},{\"lng\":117.227682,\"lat\":31.878972},{\"lng\":117.228098,\"lat\":31.879791},{\"lng\":117.229092,\"lat\":31.881371},{\"lng\":117.229473,\"lat\":31.881699},{\"lng\":117.230252,\"lat\":31.881873},{\"lng\":117.23038,\"lat\":31.881974},{\"lng\":117.230321,\"lat\":31.882273},{\"lng\":117.229831,\"lat\":31.882647},{\"lng\":117.229386,\"lat\":31.882834},{\"lng\":117.22864,\"lat\":31.883132},{\"lng\":117.22828,\"lat\":31.88411},{\"lng\":117.22805,\"lat\":31.884393},{\"lng\":117.227801,\"lat\":31.884537},{\"lng\":117.227179,\"lat\":31.884667},{\"lng\":117.225736,\"lat\":31.884618},{\"lng\":117.225024,\"lat\":31.884905},{\"lng\":117.224702,\"lat\":31.88495},{\"lng\":117.224529,\"lat\":31.884832},{\"lng\":117.224359,\"lat\":31.884454},{\"lng\":117.224222,\"lat\":31.883778},{\"lng\":117.224234,\"lat\":31.883535},{\"lng\":117.224438,\"lat\":31.883093},{\"lng\":117.224409,\"lat\":31.882898},{\"lng\":117.224179,\"lat\":31.882635},{\"lng\":117.223614,\"lat\":31.88234},{\"lng\":117.221186,\"lat\":31.881494},{\"lng\":117.218387,\"lat\":31.880653},{\"lng\":117.217597,\"lat\":31.880447},{\"lng\":117.217575,\"lat\":31.880428},{\"lng\":117.217544,\"lat\":31.880433},{\"lng\":117.215182,\"lat\":31.879814},{\"lng\":117.212259,\"lat\":31.879722},{\"lng\":117.211397,\"lat\":31.879685},{\"lng\":117.2113,\"lat\":31.878817},{\"lng\":117.211198,\"lat\":31.878725},{\"lng\":117.211009,\"lat\":31.87871},{\"lng\":117.210906,\"lat\":31.878606},{\"lng\":117.210553,\"lat\":31.877479},{\"lng\":117.210602,\"lat\":31.877248},{\"lng\":117.210871,\"lat\":31.876854},{\"lng\":117.210908,\"lat\":31.876473},{\"lng\":117.211203,\"lat\":31.876028},{\"lng\":117.211155,\"lat\":31.875929},{\"lng\":117.210992,\"lat\":31.875913},{\"lng\":117.210267,\"lat\":31.876144},{\"lng\":117.209886,\"lat\":31.876177},{\"lng\":117.208943,\"lat\":31.87568},{\"lng\":117.20873,\"lat\":31.875443},{\"lng\":117.208697,\"lat\":31.875082},{\"lng\":117.208795,\"lat\":31.874895},{\"lng\":117.209212,\"lat\":31.874577},{\"lng\":117.209199,\"lat\":31.874238},{\"lng\":117.208885,\"lat\":31.874167},{\"lng\":117.207995,\"lat\":31.874349},{\"lng\":117.207205,\"lat\":31.874057},{\"lng\":117.207095,\"lat\":31.873876},{\"lng\":117.207175,\"lat\":31.873073},{\"lng\":117.206958,\"lat\":31.872512},{\"lng\":117.206512,\"lat\":31.872199},{\"lng\":117.204957,\"lat\":31.871709},{\"lng\":117.204744,\"lat\":31.871854},{\"lng\":117.204764,\"lat\":31.872091},{\"lng\":117.205714,\"lat\":31.872908},{\"lng\":117.205886,\"lat\":31.873266},{\"lng\":117.205588,\"lat\":31.873674},{\"lng\":117.205044,\"lat\":31.874039},{\"lng\":117.204989,\"lat\":31.874293},{\"lng\":117.205589,\"lat\":31.874922},{\"lng\":117.205796,\"lat\":31.875542},{\"lng\":117.206405,\"lat\":31.875994},{\"lng\":117.206613,\"lat\":31.876588},{\"lng\":117.20646,\"lat\":31.877574},{\"lng\":117.205927,\"lat\":31.878251},{\"lng\":117.205613,\"lat\":31.878493},{\"lng\":117.205142,\"lat\":31.878569},{\"lng\":117.204607,\"lat\":31.878394},{\"lng\":117.204003,\"lat\":31.877981},{\"lng\":117.203629,\"lat\":31.877992},{\"lng\":117.203378,\"lat\":31.87821},{\"lng\":117.203269,\"lat\":31.878446},{\"lng\":117.203452,\"lat\":31.879233},{\"lng\":117.203364,\"lat\":31.879599},{\"lng\":117.202686,\"lat\":31.879647},{\"lng\":117.202298,\"lat\":31.880059},{\"lng\":117.201436,\"lat\":31.880416},{\"lng\":117.201105,\"lat\":31.880293},{\"lng\":117.20095,\"lat\":31.880045},{\"lng\":117.200899,\"lat\":31.878025},{\"lng\":117.201009,\"lat\":31.877576},{\"lng\":117.200951,\"lat\":31.877454},{\"lng\":117.200692,\"lat\":31.877374},{\"lng\":117.200355,\"lat\":31.877497},{\"lng\":117.199575,\"lat\":31.878377},{\"lng\":117.199025,\"lat\":31.878282},{\"lng\":117.198961,\"lat\":31.877321},{\"lng\":117.198506,\"lat\":31.876851},{\"lng\":117.198433,\"lat\":31.876629},{\"lng\":117.199097,\"lat\":31.875623},{\"lng\":117.199117,\"lat\":31.875449},{\"lng\":117.198056,\"lat\":31.874682},{\"lng\":117.198166,\"lat\":31.873922},{\"lng\":117.197878,\"lat\":31.873328},{\"lng\":117.197762,\"lat\":31.872793},{\"lng\":117.197093,\"lat\":31.872144},{\"lng\":117.19682,\"lat\":31.871641},{\"lng\":117.196953,\"lat\":31.87133},{\"lng\":117.197691,\"lat\":31.870737},{\"lng\":117.198047,\"lat\":31.870267},{\"lng\":117.198628,\"lat\":31.869859},{\"lng\":117.198696,\"lat\":31.869215},{\"lng\":117.198483,\"lat\":31.867852},{\"lng\":117.198581,\"lat\":31.867626},{\"lng\":117.198972,\"lat\":31.867406},{\"lng\":117.19908,\"lat\":31.867199},{\"lng\":117.198841,\"lat\":31.866667},{\"lng\":117.198329,\"lat\":31.86609},{\"lng\":117.198231,\"lat\":31.865798},{\"lng\":117.198378,\"lat\":31.865434},{\"lng\":117.198882,\"lat\":31.864904},{\"lng\":117.198928,\"lat\":31.864523},{\"lng\":117.198745,\"lat\":31.864142},{\"lng\":117.198404,\"lat\":31.863822},{\"lng\":117.198164,\"lat\":31.863225},{\"lng\":117.197788,\"lat\":31.862779},{\"lng\":117.197326,\"lat\":31.862395},{\"lng\":117.197194,\"lat\":31.862126},{\"lng\":117.197515,\"lat\":31.861314},{\"lng\":117.197507,\"lat\":31.861016},{\"lng\":117.197305,\"lat\":31.860769},{\"lng\":117.196775,\"lat\":31.860471},{\"lng\":117.196684,\"lat\":31.860142},{\"lng\":117.196365,\"lat\":31.859883},{\"lng\":117.196346,\"lat\":31.859663},{\"lng\":117.196536,\"lat\":31.859172},{\"lng\":117.196397,\"lat\":31.85863},{\"lng\":117.196224,\"lat\":31.858527},{\"lng\":117.195917,\"lat\":31.858509},{\"lng\":117.195307,\"lat\":31.8588},{\"lng\":117.195108,\"lat\":31.858944},{\"lng\":117.19462,\"lat\":31.859058},{\"lng\":117.194979,\"lat\":31.859753},{\"lng\":117.194999,\"lat\":31.85997},{\"lng\":117.194737,\"lat\":31.86089},{\"lng\":117.1944,\"lat\":31.86167},{\"lng\":117.193729,\"lat\":31.862546},{\"lng\":117.193285,\"lat\":31.862517},{\"lng\":117.193316,\"lat\":31.862192},{\"lng\":117.191914,\"lat\":31.860186},{\"lng\":117.19135,\"lat\":31.85987},{\"lng\":117.190667,\"lat\":31.859805},{\"lng\":117.19004,\"lat\":31.859908},{\"lng\":117.189914,\"lat\":31.860009},{\"lng\":117.189591,\"lat\":31.860724},{\"lng\":117.189336,\"lat\":31.861627},{\"lng\":117.188874,\"lat\":31.862156},{\"lng\":117.188231,\"lat\":31.862466},{\"lng\":117.187476,\"lat\":31.862439},{\"lng\":117.187141,\"lat\":31.862608},{\"lng\":117.18699,\"lat\":31.862805},{\"lng\":117.187115,\"lat\":31.86298},{\"lng\":117.188214,\"lat\":31.863179},{\"lng\":117.188438,\"lat\":31.86344},{\"lng\":117.189651,\"lat\":31.86337},{\"lng\":117.189932,\"lat\":31.863147},{\"lng\":117.190135,\"lat\":31.863602},{\"lng\":117.190976,\"lat\":31.863983},{\"lng\":117.191187,\"lat\":31.86417},{\"lng\":117.191452,\"lat\":31.864879},{\"lng\":117.191997,\"lat\":31.865111},{\"lng\":117.192377,\"lat\":31.865449},{\"lng\":117.192426,\"lat\":31.865806},{\"lng\":117.192293,\"lat\":31.865913},{\"lng\":117.192016,\"lat\":31.86594},{\"lng\":117.191262,\"lat\":31.865291},{\"lng\":117.190958,\"lat\":31.865136},{\"lng\":117.190758,\"lat\":31.865131},{\"lng\":117.190507,\"lat\":31.865269},{\"lng\":117.190288,\"lat\":31.865575},{\"lng\":117.19025,\"lat\":31.865783},{\"lng\":117.191086,\"lat\":31.866676},{\"lng\":117.191222,\"lat\":31.867202},{\"lng\":117.19244,\"lat\":31.868334},{\"lng\":117.192668,\"lat\":31.868785},{\"lng\":117.192663,\"lat\":31.86936},{\"lng\":117.193102,\"lat\":31.869822},{\"lng\":117.19297,\"lat\":31.870022},{\"lng\":117.192323,\"lat\":31.870062},{\"lng\":117.192112,\"lat\":31.870235},{\"lng\":117.191698,\"lat\":31.870259},{\"lng\":117.191612,\"lat\":31.870343},{\"lng\":117.192108,\"lat\":31.871227},{\"lng\":117.191768,\"lat\":31.871678},{\"lng\":117.191666,\"lat\":31.871957},{\"lng\":117.192412,\"lat\":31.872134},{\"lng\":117.192558,\"lat\":31.872316},{\"lng\":117.192535,\"lat\":31.872479},{\"lng\":117.192216,\"lat\":31.872972},{\"lng\":117.192214,\"lat\":31.873651},{\"lng\":117.192076,\"lat\":31.874087},{\"lng\":117.191593,\"lat\":31.874282},{\"lng\":117.190899,\"lat\":31.874316},{\"lng\":117.190466,\"lat\":31.874449},{\"lng\":117.18989,\"lat\":31.874346},{\"lng\":117.188841,\"lat\":31.873716},{\"lng\":117.188654,\"lat\":31.873744},{\"lng\":117.188347,\"lat\":31.873965},{\"lng\":117.187496,\"lat\":31.873926},{\"lng\":117.187277,\"lat\":31.874039},{\"lng\":117.187357,\"lat\":31.874352},{\"lng\":117.187812,\"lat\":31.874818},{\"lng\":117.188656,\"lat\":31.875004},{\"lng\":117.188863,\"lat\":31.87527},{\"lng\":117.18876,\"lat\":31.875664},{\"lng\":117.188092,\"lat\":31.876351},{\"lng\":117.187808,\"lat\":31.8768},{\"lng\":117.18724,\"lat\":31.877259},{\"lng\":117.187249,\"lat\":31.877586},{\"lng\":117.187356,\"lat\":31.877699},{\"lng\":117.187633,\"lat\":31.877748},{\"lng\":117.188023,\"lat\":31.877663},{\"lng\":117.188339,\"lat\":31.877447},{\"lng\":117.188502,\"lat\":31.877172},{\"lng\":117.189013,\"lat\":31.876921},{\"lng\":117.189296,\"lat\":31.876946},{\"lng\":117.189577,\"lat\":31.877296},{\"lng\":117.189862,\"lat\":31.877378},{\"lng\":117.190131,\"lat\":31.877314},{\"lng\":117.19067,\"lat\":31.876994},{\"lng\":117.191379,\"lat\":31.876908},{\"lng\":117.191994,\"lat\":31.876646},{\"lng\":117.192297,\"lat\":31.876668},{\"lng\":117.192451,\"lat\":31.876819},{\"lng\":117.192442,\"lat\":31.877004},{\"lng\":117.192129,\"lat\":31.877654},{\"lng\":117.192186,\"lat\":31.878184},{\"lng\":117.192061,\"lat\":31.878691},{\"lng\":117.192207,\"lat\":31.879228},{\"lng\":117.192162,\"lat\":31.879609},{\"lng\":117.191489,\"lat\":31.881036},{\"lng\":117.190748,\"lat\":31.881575},{\"lng\":117.190669,\"lat\":31.881934},{\"lng\":117.190125,\"lat\":31.882614},{\"lng\":117.190143,\"lat\":31.882963},{\"lng\":117.190566,\"lat\":31.883583},{\"lng\":117.190128,\"lat\":31.884349},{\"lng\":117.189922,\"lat\":31.884519},{\"lng\":117.189726,\"lat\":31.884558},{\"lng\":117.1875,\"lat\":31.884559},{\"lng\":117.18714,\"lat\":31.884889},{\"lng\":117.186932,\"lat\":31.885352},{\"lng\":117.186782,\"lat\":31.885451},{\"lng\":117.185499,\"lat\":31.884973},{\"lng\":117.185439,\"lat\":31.884826},{\"lng\":117.185485,\"lat\":31.88433},{\"lng\":117.185362,\"lat\":31.883714},{\"lng\":117.185597,\"lat\":31.883344},{\"lng\":117.185591,\"lat\":31.88274},{\"lng\":117.185729,\"lat\":31.881934},{\"lng\":117.185518,\"lat\":31.881794},{\"lng\":117.18465,\"lat\":31.883072},{\"lng\":117.184389,\"lat\":31.883141},{\"lng\":117.184243,\"lat\":31.883391},{\"lng\":117.183806,\"lat\":31.883341},{\"lng\":117.18361,\"lat\":31.883418},{\"lng\":117.184022,\"lat\":31.884226},{\"lng\":117.183914,\"lat\":31.884651},{\"lng\":117.183537,\"lat\":31.885237},{\"lng\":117.183251,\"lat\":31.88537},{\"lng\":117.182491,\"lat\":31.885296},{\"lng\":117.182356,\"lat\":31.885995},{\"lng\":117.182246,\"lat\":31.886162},{\"lng\":117.181672,\"lat\":31.886339},{\"lng\":117.181151,\"lat\":31.886114},{\"lng\":117.180798,\"lat\":31.885723},{\"lng\":117.18031,\"lat\":31.885441},{\"lng\":117.179817,\"lat\":31.884983},{\"lng\":117.179666,\"lat\":31.884575},{\"lng\":117.179685,\"lat\":31.883801},{\"lng\":117.179547,\"lat\":31.88373},{\"lng\":117.179194,\"lat\":31.883762},{\"lng\":117.178705,\"lat\":31.883315},{\"lng\":117.178875,\"lat\":31.881838},{\"lng\":117.178809,\"lat\":31.881502},{\"lng\":117.178581,\"lat\":31.881379},{\"lng\":117.178446,\"lat\":31.880655},{\"lng\":117.178797,\"lat\":31.880075},{\"lng\":117.178708,\"lat\":31.879734},{\"lng\":117.178097,\"lat\":31.879508},{\"lng\":117.177855,\"lat\":31.879172},{\"lng\":117.177429,\"lat\":31.878914},{\"lng\":117.177024,\"lat\":31.878431},{\"lng\":117.176911,\"lat\":31.878409},{\"lng\":117.175908,\"lat\":31.878929},{\"lng\":117.175739,\"lat\":31.879205},{\"lng\":117.175798,\"lat\":31.87991},{\"lng\":117.17641,\"lat\":31.880791},{\"lng\":117.176286,\"lat\":31.882306},{\"lng\":117.175626,\"lat\":31.884645},{\"lng\":117.175695,\"lat\":31.885005},{\"lng\":117.175922,\"lat\":31.88533},{\"lng\":117.17601,\"lat\":31.885823},{\"lng\":117.176325,\"lat\":31.886269},{\"lng\":117.176266,\"lat\":31.886449},{\"lng\":117.176048,\"lat\":31.886497},{\"lng\":117.175158,\"lat\":31.886234},{\"lng\":117.174646,\"lat\":31.886311},{\"lng\":117.173988,\"lat\":31.886192},{\"lng\":117.173369,\"lat\":31.886201},{\"lng\":117.171643,\"lat\":31.887164},{\"lng\":117.171222,\"lat\":31.887631},{\"lng\":117.170826,\"lat\":31.887626},{\"lng\":117.170612,\"lat\":31.887329},{\"lng\":117.170215,\"lat\":31.887067},{\"lng\":117.169858,\"lat\":31.886648},{\"lng\":117.169584,\"lat\":31.886578},{\"lng\":117.1686,\"lat\":31.886667},{\"lng\":117.167563,\"lat\":31.886876},{\"lng\":117.167431,\"lat\":31.887018},{\"lng\":117.167276,\"lat\":31.887581},{\"lng\":117.166975,\"lat\":31.887816},{\"lng\":117.166594,\"lat\":31.887785},{\"lng\":117.166174,\"lat\":31.887446},{\"lng\":117.166083,\"lat\":31.887129},{\"lng\":117.166431,\"lat\":31.886803},{\"lng\":117.166491,\"lat\":31.886509},{\"lng\":117.165782,\"lat\":31.885888},{\"lng\":117.165518,\"lat\":31.885049},{\"lng\":117.165195,\"lat\":31.884588},{\"lng\":117.1654,\"lat\":31.884144},{\"lng\":117.165215,\"lat\":31.883666},{\"lng\":117.165333,\"lat\":31.883165},{\"lng\":117.164588,\"lat\":31.883332},{\"lng\":117.164384,\"lat\":31.883244},{\"lng\":117.164281,\"lat\":31.883045},{\"lng\":117.164184,\"lat\":31.882063},{\"lng\":117.164382,\"lat\":31.88168},{\"lng\":117.165018,\"lat\":31.881088},{\"lng\":117.165017,\"lat\":31.880892},{\"lng\":117.164747,\"lat\":31.880695},{\"lng\":117.163856,\"lat\":31.881165},{\"lng\":117.163393,\"lat\":31.881187},{\"lng\":117.162853,\"lat\":31.880838},{\"lng\":117.162745,\"lat\":31.880616},{\"lng\":117.162303,\"lat\":31.880403},{\"lng\":117.161967,\"lat\":31.879935},{\"lng\":117.161974,\"lat\":31.87939},{\"lng\":117.161544,\"lat\":31.878591},{\"lng\":117.161529,\"lat\":31.878186},{\"lng\":117.161273,\"lat\":31.877708},{\"lng\":117.161259,\"lat\":31.877154},{\"lng\":117.161138,\"lat\":31.877104},{\"lng\":117.160761,\"lat\":31.877176},{\"lng\":117.159964,\"lat\":31.876949},{\"lng\":117.159848,\"lat\":31.877471},{\"lng\":117.159994,\"lat\":31.878032},{\"lng\":117.159427,\"lat\":31.878409},{\"lng\":117.159378,\"lat\":31.87855},{\"lng\":117.159418,\"lat\":31.8796},{\"lng\":117.159687,\"lat\":31.881382},{\"lng\":117.160142,\"lat\":31.882144},{\"lng\":117.160267,\"lat\":31.882703},{\"lng\":117.160179,\"lat\":31.883159},{\"lng\":117.159873,\"lat\":31.883816},{\"lng\":117.160538,\"lat\":31.884481},{\"lng\":117.160634,\"lat\":31.885387},{\"lng\":117.16082,\"lat\":31.885797},{\"lng\":117.161725,\"lat\":31.886508},{\"lng\":117.162112,\"lat\":31.88734},{\"lng\":117.16251,\"lat\":31.887552},{\"lng\":117.163074,\"lat\":31.888032},{\"lng\":117.163139,\"lat\":31.888962},{\"lng\":117.163413,\"lat\":31.889428},{\"lng\":117.16328,\"lat\":31.889558},{\"lng\":117.161947,\"lat\":31.889816},{\"lng\":117.161472,\"lat\":31.890055},{\"lng\":117.161081,\"lat\":31.890446},{\"lng\":117.160752,\"lat\":31.891071},{\"lng\":117.160209,\"lat\":31.891247},{\"lng\":117.159993,\"lat\":31.89153},{\"lng\":117.159616,\"lat\":31.89172},{\"lng\":117.15921,\"lat\":31.891747},{\"lng\":117.158674,\"lat\":31.891527},{\"lng\":117.158351,\"lat\":31.891531},{\"lng\":117.158067,\"lat\":31.891754},{\"lng\":117.157662,\"lat\":31.892732},{\"lng\":117.156904,\"lat\":31.89316},{\"lng\":117.156669,\"lat\":31.893957},{\"lng\":117.156449,\"lat\":31.894316},{\"lng\":117.156455,\"lat\":31.89459},{\"lng\":117.156945,\"lat\":31.894675},{\"lng\":117.157506,\"lat\":31.894909},{\"lng\":117.157652,\"lat\":31.895063},{\"lng\":117.157664,\"lat\":31.895243},{\"lng\":117.157408,\"lat\":31.89577},{\"lng\":117.157303,\"lat\":31.896434},{\"lng\":117.157176,\"lat\":31.896557},{\"lng\":117.156662,\"lat\":31.896619},{\"lng\":117.156485,\"lat\":31.896564},{\"lng\":117.156412,\"lat\":31.896431},{\"lng\":117.156422,\"lat\":31.896021},{\"lng\":117.15608,\"lat\":31.895761},{\"lng\":117.15588,\"lat\":31.895288},{\"lng\":117.155603,\"lat\":31.895071},{\"lng\":117.154685,\"lat\":31.89512},{\"lng\":117.154159,\"lat\":31.895366},{\"lng\":117.153982,\"lat\":31.89628},{\"lng\":117.153561,\"lat\":31.896735},{\"lng\":117.154198,\"lat\":31.89784},{\"lng\":117.154162,\"lat\":31.898088},{\"lng\":117.153998,\"lat\":31.898231},{\"lng\":117.153742,\"lat\":31.898308},{\"lng\":117.152437,\"lat\":31.898202},{\"lng\":117.150315,\"lat\":31.898878},{\"lng\":117.149941,\"lat\":31.898912},{\"lng\":117.14926,\"lat\":31.898808},{\"lng\":117.14885,\"lat\":31.898617},{\"lng\":117.148024,\"lat\":31.897908},{\"lng\":117.147736,\"lat\":31.897194},{\"lng\":117.147082,\"lat\":31.896836},{\"lng\":117.146595,\"lat\":31.896677},{\"lng\":117.145849,\"lat\":31.896662},{\"lng\":117.145011,\"lat\":31.896775},{\"lng\":117.144368,\"lat\":31.896294},{\"lng\":117.143298,\"lat\":31.894911},{\"lng\":117.143074,\"lat\":31.894211},{\"lng\":117.1427,\"lat\":31.893811},{\"lng\":117.142628,\"lat\":31.893363},{\"lng\":117.1423,\"lat\":31.893181},{\"lng\":117.142241,\"lat\":31.892817},{\"lng\":117.142326,\"lat\":31.891822},{\"lng\":117.142557,\"lat\":31.891494},{\"lng\":117.142544,\"lat\":31.89126},{\"lng\":117.142181,\"lat\":31.891021},{\"lng\":117.141832,\"lat\":31.891011},{\"lng\":117.14155,\"lat\":31.891335},{\"lng\":117.141088,\"lat\":31.894262},{\"lng\":117.139036,\"lat\":31.895828},{\"lng\":117.136512,\"lat\":31.89847},{\"lng\":117.134185,\"lat\":31.900999},{\"lng\":117.132991,\"lat\":31.903468},{\"lng\":117.130883,\"lat\":31.906047},{\"lng\":117.129265,\"lat\":31.907383},{\"lng\":117.128031,\"lat\":31.908453},{\"lng\":117.126838,\"lat\":31.909453},{\"lng\":117.125187,\"lat\":31.910079},{\"lng\":117.124743,\"lat\":31.910621},{\"lng\":117.124022,\"lat\":31.91083},{\"lng\":117.12269,\"lat\":31.910831},{\"lng\":117.120705,\"lat\":31.910527},{\"lng\":117.119165,\"lat\":31.911014},{\"lng\":117.118305,\"lat\":31.911056},{\"lng\":117.116848,\"lat\":31.911723},{\"lng\":117.115376,\"lat\":31.912098},{\"lng\":117.114405,\"lat\":31.912793},{\"lng\":117.113905,\"lat\":31.912862},{\"lng\":117.111698,\"lat\":31.913099},{\"lng\":117.110324,\"lat\":31.913821},{\"lng\":117.107839,\"lat\":31.914904},{\"lng\":117.107256,\"lat\":31.915085},{\"lng\":117.106297,\"lat\":31.915223},{\"lng\":117.105645,\"lat\":31.915709},{\"lng\":117.104909,\"lat\":31.916348},{\"lng\":117.104465,\"lat\":31.916639},{\"lng\":117.104131,\"lat\":31.916611},{\"lng\":117.10384,\"lat\":31.916389},{\"lng\":117.103465,\"lat\":31.916028},{\"lng\":117.103006,\"lat\":31.915848},{\"lng\":117.10259,\"lat\":31.916056},{\"lng\":117.102451,\"lat\":31.916514},{\"lng\":117.10284,\"lat\":31.917111},{\"lng\":117.103423,\"lat\":31.917499},{\"lng\":117.103923,\"lat\":31.91786},{\"lng\":117.103979,\"lat\":31.918165},{\"lng\":117.103715,\"lat\":31.918526},{\"lng\":117.103076,\"lat\":31.919192},{\"lng\":117.102701,\"lat\":31.919525},{\"lng\":117.102076,\"lat\":31.919789},{\"lng\":117.101451,\"lat\":31.919817},{\"lng\":117.100729,\"lat\":31.920219},{\"lng\":117.099701,\"lat\":31.920649},{\"lng\":117.099007,\"lat\":31.921232},{\"lng\":117.098576,\"lat\":31.92187},{\"lng\":117.098354,\"lat\":31.922217},{\"lng\":117.098076,\"lat\":31.922217},{\"lng\":117.097784,\"lat\":31.922064},{\"lng\":117.097479,\"lat\":31.921981},{\"lng\":117.096982,\"lat\":31.922094},{\"lng\":117.096297,\"lat\":31.922538},{\"lng\":117.096241,\"lat\":31.922852},{\"lng\":117.096463,\"lat\":31.923093},{\"lng\":117.097119,\"lat\":31.923495},{\"lng\":117.097202,\"lat\":31.923787},{\"lng\":117.096771,\"lat\":31.924342},{\"lng\":117.096549,\"lat\":31.924772},{\"lng\":117.096619,\"lat\":31.925369},{\"lng\":117.097016,\"lat\":31.926123},{\"lng\":117.096942,\"lat\":31.926585},{\"lng\":117.096331,\"lat\":31.926493},{\"lng\":117.095849,\"lat\":31.926566},{\"lng\":117.095442,\"lat\":31.926936},{\"lng\":117.095405,\"lat\":31.927436},{\"lng\":117.095442,\"lat\":31.92825},{\"lng\":117.095683,\"lat\":31.928935},{\"lng\":117.096072,\"lat\":31.929657},{\"lng\":117.095924,\"lat\":31.930063},{\"lng\":117.095553,\"lat\":31.930341},{\"lng\":117.095034,\"lat\":31.930415},{\"lng\":117.093979,\"lat\":31.930525},{\"lng\":117.093423,\"lat\":31.930655},{\"lng\":117.092876,\"lat\":31.930358},{\"lng\":117.092333,\"lat\":31.930481},{\"lng\":117.09144,\"lat\":31.931479},{\"lng\":117.087796,\"lat\":31.934959},{\"lng\":117.085764,\"lat\":31.937303},{\"lng\":117.0838,\"lat\":31.939295},{\"lng\":117.083059,\"lat\":31.940386},{\"lng\":117.081302,\"lat\":31.941522},{\"lng\":117.080086,\"lat\":31.941972},{\"lng\":117.079077,\"lat\":31.942035},{\"lng\":117.078198,\"lat\":31.941971},{\"lng\":117.076983,\"lat\":31.942078},{\"lng\":117.074483,\"lat\":31.94379},{\"lng\":117.073061,\"lat\":31.944988},{\"lng\":117.071983,\"lat\":31.94624},{\"lng\":117.071165,\"lat\":31.947952},{\"lng\":117.06891,\"lat\":31.954649},{\"lng\":117.068428,\"lat\":31.956308},{\"lng\":117.067947,\"lat\":31.959336},{\"lng\":117.067794,\"lat\":31.961284},{\"lng\":117.067383,\"lat\":31.962893},{\"lng\":117.067761,\"lat\":31.962837},{\"lng\":117.06841,\"lat\":31.962733},{\"lng\":117.069209,\"lat\":31.962539},{\"lng\":117.069722,\"lat\":31.962329},{\"lng\":117.070295,\"lat\":31.962014},{\"lng\":117.070989,\"lat\":31.961564},{\"lng\":117.071622,\"lat\":31.961188},{\"lng\":117.072633,\"lat\":31.960663},{\"lng\":117.0731,\"lat\":31.960423},{\"lng\":117.073704,\"lat\":31.960243},{\"lng\":117.07514,\"lat\":31.959797},{\"lng\":117.075604,\"lat\":31.959561},{\"lng\":117.076045,\"lat\":31.959291},{\"lng\":117.076485,\"lat\":31.958874},{\"lng\":117.077447,\"lat\":31.957972},{\"lng\":117.078114,\"lat\":31.957522},{\"lng\":117.078476,\"lat\":31.957375},{\"lng\":117.078928,\"lat\":31.957308},{\"lng\":117.080387,\"lat\":31.957366},{\"lng\":117.08093,\"lat\":31.957423},{\"lng\":117.081698,\"lat\":31.95748},{\"lng\":117.082589,\"lat\":31.957501},{\"lng\":117.082945,\"lat\":31.957493},{\"lng\":117.08325,\"lat\":31.957451},{\"lng\":117.08487,\"lat\":31.957258},{\"lng\":117.086503,\"lat\":31.957},{\"lng\":117.086831,\"lat\":31.956876},{\"lng\":117.088662,\"lat\":31.955929},{\"lng\":117.089136,\"lat\":31.955726},{\"lng\":117.089667,\"lat\":31.955636},{\"lng\":117.090594,\"lat\":31.955614},{\"lng\":117.09238,\"lat\":31.955649},{\"lng\":117.093107,\"lat\":31.955744},{\"lng\":117.093468,\"lat\":31.955999},{\"lng\":117.093995,\"lat\":31.956872},{\"lng\":117.094764,\"lat\":31.958362},{\"lng\":117.095322,\"lat\":31.959867},{\"lng\":117.095352,\"lat\":31.960649},{\"lng\":117.095231,\"lat\":31.961206},{\"lng\":117.095412,\"lat\":31.961447},{\"lng\":117.095789,\"lat\":31.961718},{\"lng\":117.096297,\"lat\":31.96219},{\"lng\":117.096643,\"lat\":31.962607},{\"lng\":117.097467,\"lat\":31.963451},{\"lng\":117.098049,\"lat\":31.963892},{\"lng\":117.098431,\"lat\":31.964032},{\"lng\":117.098893,\"lat\":31.964073},{\"lng\":117.099857,\"lat\":31.963952},{\"lng\":117.101001,\"lat\":31.963672},{\"lng\":117.102352,\"lat\":31.963231},{\"lng\":117.103375,\"lat\":31.962839},{\"lng\":117.103827,\"lat\":31.962523},{\"lng\":117.104189,\"lat\":31.962117},{\"lng\":117.10446,\"lat\":31.961756},{\"lng\":117.10473,\"lat\":31.961485},{\"lng\":117.105092,\"lat\":31.961184},{\"lng\":117.106101,\"lat\":31.960582},{\"lng\":117.107937,\"lat\":31.959755},{\"lng\":117.10869,\"lat\":31.959454},{\"lng\":117.109217,\"lat\":31.959333},{\"lng\":117.11003,\"lat\":31.959198},{\"lng\":117.110346,\"lat\":31.959107},{\"lng\":117.110692,\"lat\":31.958926},{\"lng\":117.111625,\"lat\":31.958264},{\"lng\":117.112242,\"lat\":31.957873},{\"lng\":117.112678,\"lat\":31.957707},{\"lng\":117.113055,\"lat\":31.957632},{\"lng\":117.113566,\"lat\":31.957646},{\"lng\":117.114514,\"lat\":31.957676},{\"lng\":117.114906,\"lat\":31.957676},{\"lng\":117.115312,\"lat\":31.957631},{\"lng\":117.11614,\"lat\":31.95742},{\"lng\":117.117614,\"lat\":31.956937},{\"lng\":117.119961,\"lat\":31.955943},{\"lng\":117.122684,\"lat\":31.954767},{\"lng\":117.123241,\"lat\":31.954496},{\"lng\":117.123797,\"lat\":31.954105},{\"lng\":117.124715,\"lat\":31.953321},{\"lng\":117.125557,\"lat\":31.952598},{\"lng\":117.125933,\"lat\":31.952237},{\"lng\":117.126069,\"lat\":31.951951},{\"lng\":117.126501,\"lat\":31.951518},{\"lng\":117.126952,\"lat\":31.951303},{\"lng\":117.12755,\"lat\":31.951066},{\"lng\":117.128972,\"lat\":31.950726},{\"lng\":117.132581,\"lat\":31.94974},{\"lng\":117.133438,\"lat\":31.949457},{\"lng\":117.134408,\"lat\":31.94905},{\"lng\":117.135772,\"lat\":31.94845},{\"lng\":117.137227,\"lat\":31.94785},{\"lng\":117.138196,\"lat\":31.947285},{\"lng\":117.139459,\"lat\":31.946673},{\"lng\":117.140688,\"lat\":31.946266},{\"lng\":117.141477,\"lat\":31.946095},{\"lng\":117.142435,\"lat\":31.945981},{\"lng\":117.144431,\"lat\":31.945978},{\"lng\":117.1469,\"lat\":31.946042},{\"lng\":117.148433,\"lat\":31.94604},{\"lng\":117.150293,\"lat\":31.94606},{\"lng\":117.150766,\"lat\":31.946126},{\"lng\":117.151318,\"lat\":31.94625},{\"lng\":117.151792,\"lat\":31.946384},{\"lng\":117.152265,\"lat\":31.946576},{\"lng\":117.154373,\"lat\":31.947824},{\"lng\":117.156526,\"lat\":31.949164},{\"lng\":117.160256,\"lat\":31.951572},{\"lng\":117.16274,\"lat\":31.953204},{\"lng\":117.163251,\"lat\":31.953715},{\"lng\":117.163612,\"lat\":31.954226},{\"lng\":117.164048,\"lat\":31.955083},{\"lng\":117.164313,\"lat\":31.955855},{\"lng\":117.164393,\"lat\":31.956396},{\"lng\":117.164391,\"lat\":31.957009},{\"lng\":117.165077,\"lat\":31.957105},{\"lng\":117.166554,\"lat\":31.956704},{\"lng\":117.168108,\"lat\":31.955554},{\"lng\":117.169784,\"lat\":31.954584},{\"lng\":117.170934,\"lat\":31.953498},{\"lng\":117.17181,\"lat\":31.952233},{\"lng\":117.172754,\"lat\":31.950517},{\"lng\":117.174841,\"lat\":31.949257},{\"lng\":117.176928,\"lat\":31.947708},{\"lng\":117.180629,\"lat\":31.944784},{\"lng\":117.182106,\"lat\":31.943409},{\"lng\":117.183187,\"lat\":31.941061},{\"lng\":117.183531,\"lat\":31.939572},{\"lng\":117.183606,\"lat\":31.937688},{\"lng\":117.183142,\"lat\":31.935967},{\"lng\":117.18308,\"lat\":31.933677},{\"lng\":117.182616,\"lat\":31.931388},{\"lng\":117.182897,\"lat\":31.929034},{\"lng\":117.183232,\"lat\":31.927888},{\"lng\":117.18391,\"lat\":31.927093},{\"lng\":117.185654,\"lat\":31.926284},{\"lng\":117.187871,\"lat\":31.926349},{\"lng\":117.188944,\"lat\":31.926914},{\"lng\":117.189881,\"lat\":31.927894},{\"lng\":117.191344,\"lat\":31.929953},{\"lng\":117.192951,\"lat\":31.932473},{\"lng\":117.193888,\"lat\":31.934246},{\"lng\":117.195024,\"lat\":31.934873},{\"lng\":117.19657,\"lat\":31.935274},{\"lng\":117.203213,\"lat\":31.936416},{\"lng\":117.205758,\"lat\":31.937111},{\"lng\":117.21113,\"lat\":31.938826},{\"lng\":117.214346,\"lat\":31.939627},{\"lng\":117.218172,\"lat\":31.941112},{\"lng\":117.220451,\"lat\":31.942143},{\"lng\":117.22388,\"lat\":31.942602},{\"lng\":117.225154,\"lat\":31.942373},{\"lng\":117.227106,\"lat\":31.941691},{\"lng\":117.22879,\"lat\":31.941055},{\"lng\":117.230323,\"lat\":31.94035},{\"lng\":117.229644,\"lat\":31.937483},{\"lng\":117.22991,\"lat\":31.936355},{\"lng\":117.230971,\"lat\":31.935234},{\"lng\":117.232297,\"lat\":31.934338},{\"lng\":117.233624,\"lat\":31.933667},{\"lng\":117.234943,\"lat\":31.933213},{\"lng\":117.23627,\"lat\":31.932993},{\"lng\":117.237597,\"lat\":31.932323},{\"lng\":117.238391,\"lat\":31.931194},{\"lng\":117.239901,\"lat\":31.929915},{\"lng\":117.241862,\"lat\":31.931441},{\"lng\":117.244963,\"lat\":31.939712},{\"lng\":117.247629,\"lat\":31.94933},{\"lng\":117.249332,\"lat\":31.951375},{\"lng\":117.250546,\"lat\":31.952183},{\"lng\":117.252086,\"lat\":31.952732},{\"lng\":117.252919,\"lat\":31.952739},{\"lng\":117.255908,\"lat\":31.952015},{\"lng\":117.258347,\"lat\":31.951822},{\"lng\":117.259619,\"lat\":31.952161},{\"lng\":117.261085,\"lat\":31.952688},{\"lng\":117.2624,\"lat\":31.953286},{\"lng\":117.268372,\"lat\":31.955063},{\"lng\":117.269441,\"lat\":31.955521},{\"lng\":117.270793,\"lat\":31.956331},{\"lng\":117.272603,\"lat\":31.957077},{\"lng\":117.275835,\"lat\":31.957135},{\"lng\":117.277118,\"lat\":31.956737},{\"lng\":117.278401,\"lat\":31.955996},{\"lng\":117.279678,\"lat\":31.955084},{\"lng\":117.282313,\"lat\":31.952168},{\"lng\":117.284201,\"lat\":31.951084},{\"lng\":117.285485,\"lat\":31.950001},{\"lng\":117.286027,\"lat\":31.948855},{\"lng\":117.28637,\"lat\":31.945708},{\"lng\":117.286584,\"lat\":31.941064},{\"lng\":117.287057,\"lat\":31.937403},{\"lng\":117.287738,\"lat\":31.937177},{\"lng\":117.288877,\"lat\":31.937059},{\"lng\":117.289549,\"lat\":31.937292},{\"lng\":117.292049,\"lat\":31.937696},{\"lng\":117.295425,\"lat\":31.93855},{\"lng\":117.29725,\"lat\":31.939027}]', null, null, '庐阳区', null, '1');
INSERT INTO `fence` VALUES ('3', '340104', null, null, null, null, '[{\"lng\":117.188023,\"lat\":31.877663},{\"lng\":117.187633,\"lat\":31.877748},{\"lng\":117.187356,\"lat\":31.877699},{\"lng\":117.187249,\"lat\":31.877586},{\"lng\":117.18724,\"lat\":31.877259},{\"lng\":117.187808,\"lat\":31.8768},{\"lng\":117.188092,\"lat\":31.876351},{\"lng\":117.18876,\"lat\":31.875664},{\"lng\":117.188863,\"lat\":31.87527},{\"lng\":117.188656,\"lat\":31.875004},{\"lng\":117.187812,\"lat\":31.874818},{\"lng\":117.187357,\"lat\":31.874352},{\"lng\":117.187277,\"lat\":31.874039},{\"lng\":117.187496,\"lat\":31.873926},{\"lng\":117.188347,\"lat\":31.873965},{\"lng\":117.188654,\"lat\":31.873744},{\"lng\":117.188841,\"lat\":31.873716},{\"lng\":117.18989,\"lat\":31.874346},{\"lng\":117.190466,\"lat\":31.874449},{\"lng\":117.190899,\"lat\":31.874316},{\"lng\":117.191593,\"lat\":31.874282},{\"lng\":117.192076,\"lat\":31.874087},{\"lng\":117.192214,\"lat\":31.873651},{\"lng\":117.192216,\"lat\":31.872972},{\"lng\":117.192535,\"lat\":31.872479},{\"lng\":117.192558,\"lat\":31.872316},{\"lng\":117.192412,\"lat\":31.872134},{\"lng\":117.191666,\"lat\":31.871957},{\"lng\":117.191768,\"lat\":31.871678},{\"lng\":117.192108,\"lat\":31.871227},{\"lng\":117.191612,\"lat\":31.870343},{\"lng\":117.191698,\"lat\":31.870259},{\"lng\":117.192112,\"lat\":31.870235},{\"lng\":117.192323,\"lat\":31.870062},{\"lng\":117.19297,\"lat\":31.870022},{\"lng\":117.193102,\"lat\":31.869822},{\"lng\":117.192663,\"lat\":31.86936},{\"lng\":117.192668,\"lat\":31.868785},{\"lng\":117.19244,\"lat\":31.868334},{\"lng\":117.191222,\"lat\":31.867202},{\"lng\":117.191086,\"lat\":31.866676},{\"lng\":117.19025,\"lat\":31.865783},{\"lng\":117.190288,\"lat\":31.865575},{\"lng\":117.190507,\"lat\":31.865269},{\"lng\":117.190758,\"lat\":31.865131},{\"lng\":117.190958,\"lat\":31.865136},{\"lng\":117.191262,\"lat\":31.865291},{\"lng\":117.192016,\"lat\":31.86594},{\"lng\":117.192293,\"lat\":31.865913},{\"lng\":117.192426,\"lat\":31.865806},{\"lng\":117.192377,\"lat\":31.865449},{\"lng\":117.191997,\"lat\":31.865111},{\"lng\":117.191452,\"lat\":31.864879},{\"lng\":117.191187,\"lat\":31.86417},{\"lng\":117.190976,\"lat\":31.863983},{\"lng\":117.190135,\"lat\":31.863602},{\"lng\":117.189932,\"lat\":31.863147},{\"lng\":117.189651,\"lat\":31.86337},{\"lng\":117.188438,\"lat\":31.86344},{\"lng\":117.188214,\"lat\":31.863179},{\"lng\":117.187115,\"lat\":31.86298},{\"lng\":117.18699,\"lat\":31.862805},{\"lng\":117.187141,\"lat\":31.862608},{\"lng\":117.187476,\"lat\":31.862439},{\"lng\":117.188231,\"lat\":31.862466},{\"lng\":117.188874,\"lat\":31.862156},{\"lng\":117.189336,\"lat\":31.861627},{\"lng\":117.189591,\"lat\":31.860724},{\"lng\":117.189914,\"lat\":31.860009},{\"lng\":117.19004,\"lat\":31.859908},{\"lng\":117.190667,\"lat\":31.859805},{\"lng\":117.19135,\"lat\":31.85987},{\"lng\":117.191914,\"lat\":31.860186},{\"lng\":117.193316,\"lat\":31.862192},{\"lng\":117.193285,\"lat\":31.862517},{\"lng\":117.193729,\"lat\":31.862546},{\"lng\":117.1944,\"lat\":31.86167},{\"lng\":117.194737,\"lat\":31.86089},{\"lng\":117.194999,\"lat\":31.85997},{\"lng\":117.194979,\"lat\":31.859753},{\"lng\":117.19462,\"lat\":31.859058},{\"lng\":117.195108,\"lat\":31.858944},{\"lng\":117.195307,\"lat\":31.8588},{\"lng\":117.195917,\"lat\":31.858509},{\"lng\":117.196224,\"lat\":31.858527},{\"lng\":117.196397,\"lat\":31.85863},{\"lng\":117.196536,\"lat\":31.859172},{\"lng\":117.196346,\"lat\":31.859663},{\"lng\":117.196365,\"lat\":31.859883},{\"lng\":117.196684,\"lat\":31.860142},{\"lng\":117.196775,\"lat\":31.860471},{\"lng\":117.197305,\"lat\":31.860769},{\"lng\":117.197507,\"lat\":31.861016},{\"lng\":117.197515,\"lat\":31.861314},{\"lng\":117.197194,\"lat\":31.862126},{\"lng\":117.197326,\"lat\":31.862395},{\"lng\":117.197788,\"lat\":31.862779},{\"lng\":117.198164,\"lat\":31.863225},{\"lng\":117.198404,\"lat\":31.863822},{\"lng\":117.198745,\"lat\":31.864142},{\"lng\":117.198928,\"lat\":31.864523},{\"lng\":117.198882,\"lat\":31.864904},{\"lng\":117.198378,\"lat\":31.865434},{\"lng\":117.198231,\"lat\":31.865798},{\"lng\":117.198329,\"lat\":31.86609},{\"lng\":117.198841,\"lat\":31.866667},{\"lng\":117.19908,\"lat\":31.867199},{\"lng\":117.198972,\"lat\":31.867406},{\"lng\":117.198581,\"lat\":31.867626},{\"lng\":117.198483,\"lat\":31.867852},{\"lng\":117.198696,\"lat\":31.869215},{\"lng\":117.198628,\"lat\":31.869859},{\"lng\":117.198047,\"lat\":31.870267},{\"lng\":117.197691,\"lat\":31.870737},{\"lng\":117.196953,\"lat\":31.87133},{\"lng\":117.19682,\"lat\":31.871641},{\"lng\":117.197093,\"lat\":31.872144},{\"lng\":117.197762,\"lat\":31.872793},{\"lng\":117.197878,\"lat\":31.873328},{\"lng\":117.198166,\"lat\":31.873922},{\"lng\":117.198056,\"lat\":31.874682},{\"lng\":117.199117,\"lat\":31.875449},{\"lng\":117.199097,\"lat\":31.875623},{\"lng\":117.198433,\"lat\":31.876629},{\"lng\":117.198506,\"lat\":31.876851},{\"lng\":117.198961,\"lat\":31.877321},{\"lng\":117.199025,\"lat\":31.878282},{\"lng\":117.199575,\"lat\":31.878377},{\"lng\":117.200355,\"lat\":31.877497},{\"lng\":117.200692,\"lat\":31.877374},{\"lng\":117.200951,\"lat\":31.877454},{\"lng\":117.201009,\"lat\":31.877576},{\"lng\":117.200899,\"lat\":31.878025},{\"lng\":117.20095,\"lat\":31.880045},{\"lng\":117.201105,\"lat\":31.880293},{\"lng\":117.201436,\"lat\":31.880416},{\"lng\":117.202298,\"lat\":31.880059},{\"lng\":117.202686,\"lat\":31.879647},{\"lng\":117.203364,\"lat\":31.879599},{\"lng\":117.203452,\"lat\":31.879233},{\"lng\":117.203269,\"lat\":31.878446},{\"lng\":117.203378,\"lat\":31.87821},{\"lng\":117.203629,\"lat\":31.877992},{\"lng\":117.204003,\"lat\":31.877981},{\"lng\":117.204607,\"lat\":31.878394},{\"lng\":117.205142,\"lat\":31.878569},{\"lng\":117.205613,\"lat\":31.878493},{\"lng\":117.205927,\"lat\":31.878251},{\"lng\":117.20646,\"lat\":31.877574},{\"lng\":117.206613,\"lat\":31.876588},{\"lng\":117.206405,\"lat\":31.875994},{\"lng\":117.205796,\"lat\":31.875542},{\"lng\":117.205589,\"lat\":31.874922},{\"lng\":117.204989,\"lat\":31.874293},{\"lng\":117.205044,\"lat\":31.874039},{\"lng\":117.205588,\"lat\":31.873674},{\"lng\":117.205886,\"lat\":31.873266},{\"lng\":117.205714,\"lat\":31.872908},{\"lng\":117.204764,\"lat\":31.872091},{\"lng\":117.204744,\"lat\":31.871854},{\"lng\":117.204957,\"lat\":31.871709},{\"lng\":117.206512,\"lat\":31.872199},{\"lng\":117.206958,\"lat\":31.872512},{\"lng\":117.207175,\"lat\":31.873073},{\"lng\":117.207095,\"lat\":31.873876},{\"lng\":117.207205,\"lat\":31.874057},{\"lng\":117.207995,\"lat\":31.874349},{\"lng\":117.208885,\"lat\":31.874167},{\"lng\":117.209199,\"lat\":31.874238},{\"lng\":117.209212,\"lat\":31.874577},{\"lng\":117.208795,\"lat\":31.874895},{\"lng\":117.208697,\"lat\":31.875082},{\"lng\":117.20873,\"lat\":31.875443},{\"lng\":117.208943,\"lat\":31.87568},{\"lng\":117.209886,\"lat\":31.876177},{\"lng\":117.210267,\"lat\":31.876144},{\"lng\":117.210992,\"lat\":31.875913},{\"lng\":117.211155,\"lat\":31.875929},{\"lng\":117.211203,\"lat\":31.876028},{\"lng\":117.210908,\"lat\":31.876473},{\"lng\":117.210871,\"lat\":31.876854},{\"lng\":117.210602,\"lat\":31.877248},{\"lng\":117.210553,\"lat\":31.877479},{\"lng\":117.210906,\"lat\":31.878606},{\"lng\":117.211009,\"lat\":31.87871},{\"lng\":117.211198,\"lat\":31.878725},{\"lng\":117.2113,\"lat\":31.878817},{\"lng\":117.211397,\"lat\":31.879685},{\"lng\":117.212259,\"lat\":31.879722},{\"lng\":117.215182,\"lat\":31.879814},{\"lng\":117.217544,\"lat\":31.880433},{\"lng\":117.217575,\"lat\":31.880428},{\"lng\":117.217597,\"lat\":31.880447},{\"lng\":117.218387,\"lat\":31.880653},{\"lng\":117.221186,\"lat\":31.881494},{\"lng\":117.223614,\"lat\":31.88234},{\"lng\":117.224179,\"lat\":31.882635},{\"lng\":117.224409,\"lat\":31.882898},{\"lng\":117.224438,\"lat\":31.883093},{\"lng\":117.224234,\"lat\":31.883535},{\"lng\":117.224222,\"lat\":31.883778},{\"lng\":117.224359,\"lat\":31.884454},{\"lng\":117.224529,\"lat\":31.884832},{\"lng\":117.224702,\"lat\":31.88495},{\"lng\":117.225024,\"lat\":31.884905},{\"lng\":117.225736,\"lat\":31.884618},{\"lng\":117.227179,\"lat\":31.884667},{\"lng\":117.227801,\"lat\":31.884537},{\"lng\":117.22805,\"lat\":31.884393},{\"lng\":117.22828,\"lat\":31.88411},{\"lng\":117.22864,\"lat\":31.883132},{\"lng\":117.229386,\"lat\":31.882834},{\"lng\":117.229831,\"lat\":31.882647},{\"lng\":117.230321,\"lat\":31.882273},{\"lng\":117.23038,\"lat\":31.881974},{\"lng\":117.230252,\"lat\":31.881873},{\"lng\":117.229473,\"lat\":31.881699},{\"lng\":117.229092,\"lat\":31.881371},{\"lng\":117.228098,\"lat\":31.879791},{\"lng\":117.227682,\"lat\":31.878972},{\"lng\":117.227518,\"lat\":31.878195},{\"lng\":117.227638,\"lat\":31.877115},{\"lng\":117.228029,\"lat\":31.876627},{\"lng\":117.228429,\"lat\":31.876384},{\"lng\":117.228808,\"lat\":31.876304},{\"lng\":117.230355,\"lat\":31.876348},{\"lng\":117.231637,\"lat\":31.875833},{\"lng\":117.232301,\"lat\":31.876266},{\"lng\":117.232591,\"lat\":31.876556},{\"lng\":117.232715,\"lat\":31.876794},{\"lng\":117.232737,\"lat\":31.877153},{\"lng\":117.232532,\"lat\":31.877578},{\"lng\":117.232266,\"lat\":31.87784},{\"lng\":117.231203,\"lat\":31.877967},{\"lng\":117.231083,\"lat\":31.878057},{\"lng\":117.231067,\"lat\":31.87824},{\"lng\":117.231407,\"lat\":31.878593},{\"lng\":117.232414,\"lat\":31.878872},{\"lng\":117.233301,\"lat\":31.879656},{\"lng\":117.233593,\"lat\":31.879811},{\"lng\":117.233839,\"lat\":31.879809},{\"lng\":117.234277,\"lat\":31.879619},{\"lng\":117.234866,\"lat\":31.879144},{\"lng\":117.234976,\"lat\":31.878803},{\"lng\":117.235076,\"lat\":31.877433},{\"lng\":117.235382,\"lat\":31.876934},{\"lng\":117.235574,\"lat\":31.876831},{\"lng\":117.235796,\"lat\":31.876836},{\"lng\":117.236135,\"lat\":31.877001},{\"lng\":117.236405,\"lat\":31.877304},{\"lng\":117.23706,\"lat\":31.878505},{\"lng\":117.237418,\"lat\":31.878603},{\"lng\":117.237801,\"lat\":31.878546},{\"lng\":117.238754,\"lat\":31.878035},{\"lng\":117.239586,\"lat\":31.877809},{\"lng\":117.240488,\"lat\":31.877296},{\"lng\":117.241006,\"lat\":31.87685},{\"lng\":117.24152,\"lat\":31.876112},{\"lng\":117.241529,\"lat\":31.8761},{\"lng\":117.241526,\"lat\":31.876067},{\"lng\":117.241678,\"lat\":31.874836},{\"lng\":117.241863,\"lat\":31.874478},{\"lng\":117.2421,\"lat\":31.874408},{\"lng\":117.242355,\"lat\":31.87445},{\"lng\":117.243318,\"lat\":31.874995},{\"lng\":117.243728,\"lat\":31.875032},{\"lng\":117.243933,\"lat\":31.874939},{\"lng\":117.243998,\"lat\":31.874793},{\"lng\":117.243596,\"lat\":31.874137},{\"lng\":117.243564,\"lat\":31.873913},{\"lng\":117.243673,\"lat\":31.873743},{\"lng\":117.244044,\"lat\":31.873748},{\"lng\":117.244891,\"lat\":31.874081},{\"lng\":117.245154,\"lat\":31.874464},{\"lng\":117.245138,\"lat\":31.875965},{\"lng\":117.245273,\"lat\":31.876404},{\"lng\":117.245385,\"lat\":31.876481},{\"lng\":117.246112,\"lat\":31.87637},{\"lng\":117.246837,\"lat\":31.875951},{\"lng\":117.247052,\"lat\":31.875661},{\"lng\":117.2475,\"lat\":31.874545},{\"lng\":117.247855,\"lat\":31.874261},{\"lng\":117.248985,\"lat\":31.874259},{\"lng\":117.249059,\"lat\":31.874269},{\"lng\":117.249081,\"lat\":31.874258},{\"lng\":117.25023,\"lat\":31.874256},{\"lng\":117.250254,\"lat\":31.874258},{\"lng\":117.25028,\"lat\":31.874256},{\"lng\":117.25041,\"lat\":31.874256},{\"lng\":117.25043,\"lat\":31.874246},{\"lng\":117.250457,\"lat\":31.874256},{\"lng\":117.251824,\"lat\":31.874113},{\"lng\":117.252261,\"lat\":31.874022},{\"lng\":117.25318,\"lat\":31.87395},{\"lng\":117.253662,\"lat\":31.873912},{\"lng\":117.253834,\"lat\":31.873681},{\"lng\":117.2541,\"lat\":31.873097},{\"lng\":117.254478,\"lat\":31.872625},{\"lng\":117.254916,\"lat\":31.872239},{\"lng\":117.255637,\"lat\":31.871912},{\"lng\":117.256212,\"lat\":31.871792},{\"lng\":117.256659,\"lat\":31.871981},{\"lng\":117.256994,\"lat\":31.872075},{\"lng\":117.257501,\"lat\":31.87205},{\"lng\":117.257947,\"lat\":31.871981},{\"lng\":117.258609,\"lat\":31.871689},{\"lng\":117.25949,\"lat\":31.871075},{\"lng\":117.260601,\"lat\":31.870274},{\"lng\":117.261305,\"lat\":31.870119},{\"lng\":117.261967,\"lat\":31.870137},{\"lng\":117.262594,\"lat\":31.870386},{\"lng\":117.263376,\"lat\":31.870807},{\"lng\":117.26407,\"lat\":31.871042},{\"lng\":117.265896,\"lat\":31.87083},{\"lng\":117.268508,\"lat\":31.870371},{\"lng\":117.269677,\"lat\":31.868812},{\"lng\":117.270082,\"lat\":31.865708},{\"lng\":117.269615,\"lat\":31.861286},{\"lng\":117.26962,\"lat\":31.860855},{\"lng\":117.269663,\"lat\":31.86072},{\"lng\":117.269745,\"lat\":31.859742},{\"lng\":117.269743,\"lat\":31.859723},{\"lng\":117.269748,\"lat\":31.859699},{\"lng\":117.269925,\"lat\":31.857591},{\"lng\":117.271253,\"lat\":31.855816},{\"lng\":117.273054,\"lat\":31.854516},{\"lng\":117.273067,\"lat\":31.854505},{\"lng\":117.273085,\"lat\":31.854494},{\"lng\":117.273715,\"lat\":31.854039},{\"lng\":117.276613,\"lat\":31.853692},{\"lng\":117.276525,\"lat\":31.853557},{\"lng\":117.276535,\"lat\":31.853466},{\"lng\":117.276578,\"lat\":31.853434},{\"lng\":117.276594,\"lat\":31.853416},{\"lng\":117.27661,\"lat\":31.853411},{\"lng\":117.276637,\"lat\":31.853391},{\"lng\":117.276612,\"lat\":31.853063},{\"lng\":117.276537,\"lat\":31.85274},{\"lng\":117.276347,\"lat\":31.852247},{\"lng\":117.276155,\"lat\":31.851883},{\"lng\":117.275651,\"lat\":31.851156},{\"lng\":117.275221,\"lat\":31.850551},{\"lng\":117.275204,\"lat\":31.850312},{\"lng\":117.274929,\"lat\":31.850137},{\"lng\":117.274441,\"lat\":31.84947},{\"lng\":117.274245,\"lat\":31.849333},{\"lng\":117.274237,\"lat\":31.849173},{\"lng\":117.273764,\"lat\":31.848512},{\"lng\":117.27324,\"lat\":31.847605},{\"lng\":117.273246,\"lat\":31.847549},{\"lng\":117.273187,\"lat\":31.847514},{\"lng\":117.272998,\"lat\":31.847199},{\"lng\":117.272627,\"lat\":31.846924},{\"lng\":117.272097,\"lat\":31.846175},{\"lng\":117.271495,\"lat\":31.845334},{\"lng\":117.271389,\"lat\":31.845183},{\"lng\":117.271279,\"lat\":31.845187},{\"lng\":117.271266,\"lat\":31.845166},{\"lng\":117.27134,\"lat\":31.845113},{\"lng\":117.270773,\"lat\":31.844308},{\"lng\":117.270502,\"lat\":31.843931},{\"lng\":117.270013,\"lat\":31.843236},{\"lng\":117.269345,\"lat\":31.842334},{\"lng\":117.268876,\"lat\":31.841638},{\"lng\":117.267992,\"lat\":31.840409},{\"lng\":117.266857,\"lat\":31.838859},{\"lng\":117.266213,\"lat\":31.837894},{\"lng\":117.265629,\"lat\":31.836678},{\"lng\":117.265368,\"lat\":31.835952},{\"lng\":117.265138,\"lat\":31.834992},{\"lng\":117.265007,\"lat\":31.834195},{\"lng\":117.265115,\"lat\":31.833219},{\"lng\":117.265116,\"lat\":31.833144},{\"lng\":117.265104,\"lat\":31.833059},{\"lng\":117.26508,\"lat\":31.833027},{\"lng\":117.264796,\"lat\":31.832582},{\"lng\":117.26475,\"lat\":31.832126},{\"lng\":117.264854,\"lat\":31.831842},{\"lng\":117.264885,\"lat\":31.831796},{\"lng\":117.264899,\"lat\":31.831718},{\"lng\":117.265025,\"lat\":31.831374},{\"lng\":117.264376,\"lat\":31.83048},{\"lng\":117.26407,\"lat\":31.829323},{\"lng\":117.263782,\"lat\":31.828644},{\"lng\":117.26339,\"lat\":31.827939},{\"lng\":117.262629,\"lat\":31.82689},{\"lng\":117.261837,\"lat\":31.82588},{\"lng\":117.261002,\"lat\":31.824784},{\"lng\":117.259669,\"lat\":31.823064},{\"lng\":117.258417,\"lat\":31.821422},{\"lng\":117.257273,\"lat\":31.820614},{\"lng\":117.257122,\"lat\":31.819733},{\"lng\":117.255724,\"lat\":31.817863},{\"lng\":117.255475,\"lat\":31.817532},{\"lng\":117.254487,\"lat\":31.816391},{\"lng\":117.253786,\"lat\":31.815604},{\"lng\":117.253063,\"lat\":31.814805},{\"lng\":117.252388,\"lat\":31.813993},{\"lng\":117.252087,\"lat\":31.813662},{\"lng\":117.251153,\"lat\":31.812535},{\"lng\":117.250609,\"lat\":31.811928},{\"lng\":117.249189,\"lat\":31.810227},{\"lng\":117.247995,\"lat\":31.808825},{\"lng\":117.246369,\"lat\":31.806772},{\"lng\":117.240723,\"lat\":31.799459},{\"lng\":117.239847,\"lat\":31.798345},{\"lng\":117.239207,\"lat\":31.796985},{\"lng\":117.239138,\"lat\":31.796274},{\"lng\":117.240134,\"lat\":31.795283},{\"lng\":117.242033,\"lat\":31.793624},{\"lng\":117.244495,\"lat\":31.790833},{\"lng\":117.246653,\"lat\":31.788736},{\"lng\":117.247936,\"lat\":31.787966},{\"lng\":117.249047,\"lat\":31.787634},{\"lng\":117.249591,\"lat\":31.787867},{\"lng\":117.251573,\"lat\":31.789123},{\"lng\":117.253516,\"lat\":31.790638},{\"lng\":117.255329,\"lat\":31.791141},{\"lng\":117.257303,\"lat\":31.791325},{\"lng\":117.260296,\"lat\":31.791391},{\"lng\":117.26278,\"lat\":31.791727},{\"lng\":117.264863,\"lat\":31.791689},{\"lng\":117.268297,\"lat\":31.791212},{\"lng\":117.269826,\"lat\":31.789972},{\"lng\":117.27029,\"lat\":31.78851},{\"lng\":117.27201,\"lat\":31.786095},{\"lng\":117.27217,\"lat\":31.78534},{\"lng\":117.272058,\"lat\":31.784157},{\"lng\":117.271748,\"lat\":31.783778},{\"lng\":117.271913,\"lat\":31.780886},{\"lng\":117.273535,\"lat\":31.779937},{\"lng\":117.273984,\"lat\":31.779891},{\"lng\":117.275061,\"lat\":31.77998},{\"lng\":117.275689,\"lat\":31.77964},{\"lng\":117.276551,\"lat\":31.778931},{\"lng\":117.277716,\"lat\":31.777383},{\"lng\":117.277377,\"lat\":31.776632},{\"lng\":117.277611,\"lat\":31.776286},{\"lng\":117.277782,\"lat\":31.776217},{\"lng\":117.277455,\"lat\":31.776035},{\"lng\":117.27725,\"lat\":31.775242},{\"lng\":117.276886,\"lat\":31.77318},{\"lng\":117.276892,\"lat\":31.773141},{\"lng\":117.276876,\"lat\":31.773124},{\"lng\":117.276251,\"lat\":31.769574},{\"lng\":117.276213,\"lat\":31.756765},{\"lng\":117.27427,\"lat\":31.752906},{\"lng\":117.265027,\"lat\":31.743078},{\"lng\":117.259159,\"lat\":31.735365},{\"lng\":117.246688,\"lat\":31.730869},{\"lng\":117.227152,\"lat\":31.719044},{\"lng\":117.226788,\"lat\":31.718451},{\"lng\":117.225583,\"lat\":31.717636},{\"lng\":117.224569,\"lat\":31.717218},{\"lng\":117.223269,\"lat\":31.716989},{\"lng\":117.221968,\"lat\":31.71679},{\"lng\":117.219349,\"lat\":31.716941},{\"lng\":117.216956,\"lat\":31.717537},{\"lng\":117.21532,\"lat\":31.717977},{\"lng\":117.214467,\"lat\":31.718376},{\"lng\":117.206361,\"lat\":31.723256},{\"lng\":117.197688,\"lat\":31.732655},{\"lng\":117.18869,\"lat\":31.744646},{\"lng\":117.182324,\"lat\":31.754637},{\"lng\":117.182035,\"lat\":31.75462},{\"lng\":117.180455,\"lat\":31.755154},{\"lng\":117.178962,\"lat\":31.755761},{\"lng\":117.177452,\"lat\":31.755987},{\"lng\":117.176165,\"lat\":31.756398},{\"lng\":117.17542,\"lat\":31.756911},{\"lng\":117.175098,\"lat\":31.757239},{\"lng\":117.175052,\"lat\":31.757287},{\"lng\":117.174653,\"lat\":31.757693},{\"lng\":117.173934,\"lat\":31.759398},{\"lng\":117.173829,\"lat\":31.761069},{\"lng\":117.173834,\"lat\":31.763922},{\"lng\":117.173726,\"lat\":31.766233},{\"lng\":117.175161,\"lat\":31.76887},{\"lng\":117.177046,\"lat\":31.771558},{\"lng\":117.177456,\"lat\":31.77399},{\"lng\":117.176809,\"lat\":31.779637},{\"lng\":117.176321,\"lat\":31.781776},{\"lng\":117.175104,\"lat\":31.784758},{\"lng\":117.176001,\"lat\":31.78679},{\"lng\":117.178207,\"lat\":31.788147},{\"lng\":117.181926,\"lat\":31.786896},{\"lng\":117.185618,\"lat\":31.785895},{\"lng\":117.190361,\"lat\":31.784765},{\"lng\":117.194161,\"lat\":31.784514},{\"lng\":117.197457,\"lat\":31.784617},{\"lng\":117.199918,\"lat\":31.785462},{\"lng\":117.201066,\"lat\":31.787687},{\"lng\":117.202403,\"lat\":31.790979},{\"lng\":117.202278,\"lat\":31.794958},{\"lng\":117.203218,\"lat\":31.798256},{\"lng\":117.20342,\"lat\":31.79857},{\"lng\":117.203421,\"lat\":31.799715},{\"lng\":117.203078,\"lat\":31.800753},{\"lng\":117.202271,\"lat\":31.801612},{\"lng\":117.20093,\"lat\":31.802815},{\"lng\":117.198627,\"lat\":31.804622},{\"lng\":117.198543,\"lat\":31.804688},{\"lng\":117.197433,\"lat\":31.805559},{\"lng\":117.19642,\"lat\":31.807221},{\"lng\":117.195948,\"lat\":31.808539},{\"lng\":117.194463,\"lat\":31.811979},{\"lng\":117.190693,\"lat\":31.817934},{\"lng\":117.189954,\"lat\":31.818793},{\"lng\":117.189147,\"lat\":31.819084},{\"lng\":117.188073,\"lat\":31.819313},{\"lng\":117.187855,\"lat\":31.819312},{\"lng\":117.187781,\"lat\":31.819329},{\"lng\":117.187698,\"lat\":31.819303},{\"lng\":117.187656,\"lat\":31.819311},{\"lng\":117.18687,\"lat\":31.819308},{\"lng\":117.185057,\"lat\":31.818169},{\"lng\":117.183861,\"lat\":31.816964},{\"lng\":117.18252,\"lat\":31.816329},{\"lng\":117.18118,\"lat\":31.815819},{\"lng\":117.179238,\"lat\":31.815248},{\"lng\":117.177159,\"lat\":31.814786},{\"lng\":117.172604,\"lat\":31.814557},{\"lng\":117.169253,\"lat\":31.813756},{\"lng\":117.168186,\"lat\":31.813128},{\"lng\":117.165177,\"lat\":31.810784},{\"lng\":117.163955,\"lat\":31.810579},{\"lng\":117.162462,\"lat\":31.811346},{\"lng\":117.161858,\"lat\":31.812683},{\"lng\":117.161859,\"lat\":31.816238},{\"lng\":117.161187,\"lat\":31.81825},{\"lng\":117.160084,\"lat\":31.819472},{\"lng\":117.15718,\"lat\":31.820447},{\"lng\":117.153308,\"lat\":31.819807},{\"lng\":117.152514,\"lat\":31.819519},{\"lng\":117.149758,\"lat\":31.81852},{\"lng\":117.146369,\"lat\":31.816102},{\"lng\":117.140558,\"lat\":31.812718},{\"lng\":117.130225,\"lat\":31.804167},{\"lng\":117.122795,\"lat\":31.797873},{\"lng\":117.117464,\"lat\":31.793191},{\"lng\":117.114555,\"lat\":31.786569},{\"lng\":117.114802,\"lat\":31.782478},{\"lng\":117.1148,\"lat\":31.782416},{\"lng\":117.114817,\"lat\":31.782336},{\"lng\":117.114816,\"lat\":31.782259},{\"lng\":117.114877,\"lat\":31.781237},{\"lng\":117.114687,\"lat\":31.7794},{\"lng\":117.114708,\"lat\":31.779348},{\"lng\":117.114665,\"lat\":31.779186},{\"lng\":117.114392,\"lat\":31.776552},{\"lng\":117.111483,\"lat\":31.774937},{\"lng\":117.108089,\"lat\":31.775907},{\"lng\":117.107333,\"lat\":31.776595},{\"lng\":117.107293,\"lat\":31.776624},{\"lng\":117.107237,\"lat\":31.776689},{\"lng\":117.107206,\"lat\":31.77671},{\"lng\":117.106311,\"lat\":31.777523},{\"lng\":117.106312,\"lat\":31.779785},{\"lng\":117.106474,\"lat\":31.78237},{\"lng\":117.10518,\"lat\":31.784309},{\"lng\":117.103079,\"lat\":31.785117},{\"lng\":117.098874,\"lat\":31.784793},{\"lng\":117.093537,\"lat\":31.783014},{\"lng\":117.093337,\"lat\":31.78291},{\"lng\":117.093101,\"lat\":31.78304},{\"lng\":117.092398,\"lat\":31.783636},{\"lng\":117.092093,\"lat\":31.783743},{\"lng\":117.091923,\"lat\":31.783583},{\"lng\":117.091935,\"lat\":31.782853},{\"lng\":117.09116,\"lat\":31.783025},{\"lng\":117.090933,\"lat\":31.782164},{\"lng\":117.090786,\"lat\":31.782103},{\"lng\":117.090346,\"lat\":31.782149},{\"lng\":117.090106,\"lat\":31.781909},{\"lng\":117.089958,\"lat\":31.781306},{\"lng\":117.089038,\"lat\":31.781053},{\"lng\":117.088744,\"lat\":31.780423},{\"lng\":117.08834,\"lat\":31.78014},{\"lng\":117.088138,\"lat\":31.780174},{\"lng\":117.087312,\"lat\":31.780815},{\"lng\":117.086796,\"lat\":31.780805},{\"lng\":117.08644,\"lat\":31.780663},{\"lng\":117.085305,\"lat\":31.779852},{\"lng\":117.084316,\"lat\":31.779285},{\"lng\":117.084099,\"lat\":31.778951},{\"lng\":117.083745,\"lat\":31.778017},{\"lng\":117.083309,\"lat\":31.777594},{\"lng\":117.08219,\"lat\":31.777446},{\"lng\":117.081147,\"lat\":31.777034},{\"lng\":117.079841,\"lat\":31.777104},{\"lng\":117.079279,\"lat\":31.777259},{\"lng\":117.078936,\"lat\":31.777209},{\"lng\":117.078547,\"lat\":31.776889},{\"lng\":117.078372,\"lat\":31.776098},{\"lng\":117.078086,\"lat\":31.775941},{\"lng\":117.07735,\"lat\":31.775967},{\"lng\":117.076981,\"lat\":31.776107},{\"lng\":117.07615,\"lat\":31.777172},{\"lng\":117.074824,\"lat\":31.777674},{\"lng\":117.074685,\"lat\":31.777871},{\"lng\":117.074514,\"lat\":31.778461},{\"lng\":117.074174,\"lat\":31.778468},{\"lng\":117.072827,\"lat\":31.778069},{\"lng\":117.072904,\"lat\":31.778959},{\"lng\":117.072703,\"lat\":31.77936},{\"lng\":117.071993,\"lat\":31.77947},{\"lng\":117.071093,\"lat\":31.779231},{\"lng\":117.070047,\"lat\":31.779153},{\"lng\":117.069109,\"lat\":31.778929},{\"lng\":117.067941,\"lat\":31.779039},{\"lng\":117.067233,\"lat\":31.778701},{\"lng\":117.066386,\"lat\":31.778811},{\"lng\":117.065472,\"lat\":31.778462},{\"lng\":117.064787,\"lat\":31.778708},{\"lng\":117.064314,\"lat\":31.778432},{\"lng\":117.063525,\"lat\":31.778184},{\"lng\":117.063174,\"lat\":31.777828},{\"lng\":117.062908,\"lat\":31.77791},{\"lng\":117.062187,\"lat\":31.778689},{\"lng\":117.061335,\"lat\":31.779065},{\"lng\":117.061145,\"lat\":31.779336},{\"lng\":117.06108,\"lat\":31.779648},{\"lng\":117.061105,\"lat\":31.780506},{\"lng\":117.060153,\"lat\":31.780548},{\"lng\":117.059913,\"lat\":31.781228},{\"lng\":117.060088,\"lat\":31.781582},{\"lng\":117.061068,\"lat\":31.782252},{\"lng\":117.061171,\"lat\":31.782437},{\"lng\":117.06114,\"lat\":31.782621},{\"lng\":117.060796,\"lat\":31.78283},{\"lng\":117.060034,\"lat\":31.782585},{\"lng\":117.059603,\"lat\":31.782722},{\"lng\":117.058313,\"lat\":31.783253},{\"lng\":117.058282,\"lat\":31.783446},{\"lng\":117.058481,\"lat\":31.78388},{\"lng\":117.058483,\"lat\":31.784096},{\"lng\":117.057795,\"lat\":31.785244},{\"lng\":117.057244,\"lat\":31.785381},{\"lng\":117.056479,\"lat\":31.785206},{\"lng\":117.056172,\"lat\":31.785746},{\"lng\":117.055892,\"lat\":31.785929},{\"lng\":117.055344,\"lat\":31.785855},{\"lng\":117.054558,\"lat\":31.785202},{\"lng\":117.054007,\"lat\":31.785087},{\"lng\":117.053692,\"lat\":31.785133},{\"lng\":117.053081,\"lat\":31.785453},{\"lng\":117.052642,\"lat\":31.785519},{\"lng\":117.051185,\"lat\":31.785171},{\"lng\":117.050738,\"lat\":31.785318},{\"lng\":117.050001,\"lat\":31.785759},{\"lng\":117.049589,\"lat\":31.785856},{\"lng\":117.049224,\"lat\":31.785754},{\"lng\":117.048771,\"lat\":31.785192},{\"lng\":117.048486,\"lat\":31.785046},{\"lng\":117.048244,\"lat\":31.785111},{\"lng\":117.047529,\"lat\":31.785553},{\"lng\":117.047304,\"lat\":31.785567},{\"lng\":117.047264,\"lat\":31.785239},{\"lng\":117.043652,\"lat\":31.786008},{\"lng\":117.037328,\"lat\":31.790839},{\"lng\":117.034734,\"lat\":31.79374},{\"lng\":117.034896,\"lat\":31.795841},{\"lng\":117.039113,\"lat\":31.797468},{\"lng\":117.042356,\"lat\":31.798445},{\"lng\":117.044302,\"lat\":31.800712},{\"lng\":117.043816,\"lat\":31.804103},{\"lng\":117.042357,\"lat\":31.80717},{\"lng\":117.040249,\"lat\":31.811204},{\"lng\":117.040574,\"lat\":31.82009},{\"lng\":117.041385,\"lat\":31.822354},{\"lng\":117.04398,\"lat\":31.822522},{\"lng\":117.047709,\"lat\":31.822369},{\"lng\":117.050789,\"lat\":31.824477},{\"lng\":117.055165,\"lat\":31.825617},{\"lng\":117.061161,\"lat\":31.826759},{\"lng\":117.064564,\"lat\":31.829028},{\"lng\":117.065374,\"lat\":31.83226},{\"lng\":117.066509,\"lat\":31.837755},{\"lng\":117.068129,\"lat\":31.841797},{\"lng\":117.069587,\"lat\":31.843899},{\"lng\":117.072664,\"lat\":31.845681},{\"lng\":117.076226,\"lat\":31.847786},{\"lng\":117.076227,\"lat\":31.850371},{\"lng\":117.07477,\"lat\":31.852469},{\"lng\":117.072665,\"lat\":31.855374},{\"lng\":117.07137,\"lat\":31.858442},{\"lng\":117.070398,\"lat\":31.861672},{\"lng\":117.068941,\"lat\":31.865709},{\"lng\":117.067645,\"lat\":31.868614},{\"lng\":117.064568,\"lat\":31.871032},{\"lng\":117.060355,\"lat\":31.872317},{\"lng\":117.060031,\"lat\":31.874256},{\"lng\":117.062138,\"lat\":31.875875},{\"lng\":117.065054,\"lat\":31.878303},{\"lng\":117.06797,\"lat\":31.881378},{\"lng\":117.067935,\"lat\":31.885435},{\"lng\":117.07085,\"lat\":31.889639},{\"lng\":117.075871,\"lat\":31.893362},{\"lng\":117.081538,\"lat\":31.896761},{\"lng\":117.083965,\"lat\":31.898379},{\"lng\":117.084613,\"lat\":31.901449},{\"lng\":117.084613,\"lat\":31.903872},{\"lng\":117.086394,\"lat\":31.905005},{\"lng\":117.088659,\"lat\":31.906461},{\"lng\":117.088821,\"lat\":31.909126},{\"lng\":117.088579,\"lat\":31.911428},{\"lng\":117.089671,\"lat\":31.912641},{\"lng\":117.091734,\"lat\":31.913248},{\"lng\":117.095859,\"lat\":31.915551},{\"lng\":117.097072,\"lat\":31.916885},{\"lng\":117.097072,\"lat\":31.920035},{\"lng\":117.096982,\"lat\":31.922094},{\"lng\":117.097479,\"lat\":31.921981},{\"lng\":117.097784,\"lat\":31.922064},{\"lng\":117.098076,\"lat\":31.922217},{\"lng\":117.098354,\"lat\":31.922217},{\"lng\":117.098576,\"lat\":31.92187},{\"lng\":117.099007,\"lat\":31.921232},{\"lng\":117.099701,\"lat\":31.920649},{\"lng\":117.100729,\"lat\":31.920219},{\"lng\":117.101451,\"lat\":31.919817},{\"lng\":117.102076,\"lat\":31.919789},{\"lng\":117.102701,\"lat\":31.919525},{\"lng\":117.103076,\"lat\":31.919192},{\"lng\":117.103715,\"lat\":31.918526},{\"lng\":117.103979,\"lat\":31.918165},{\"lng\":117.103923,\"lat\":31.91786},{\"lng\":117.103423,\"lat\":31.917499},{\"lng\":117.10284,\"lat\":31.917111},{\"lng\":117.102451,\"lat\":31.916514},{\"lng\":117.10259,\"lat\":31.916056},{\"lng\":117.103006,\"lat\":31.915848},{\"lng\":117.103465,\"lat\":31.916028},{\"lng\":117.10384,\"lat\":31.916389},{\"lng\":117.104131,\"lat\":31.916611},{\"lng\":117.104465,\"lat\":31.916639},{\"lng\":117.104909,\"lat\":31.916348},{\"lng\":117.105645,\"lat\":31.915709},{\"lng\":117.106297,\"lat\":31.915223},{\"lng\":117.107256,\"lat\":31.915085},{\"lng\":117.107839,\"lat\":31.914904},{\"lng\":117.110324,\"lat\":31.913821},{\"lng\":117.111698,\"lat\":31.913099},{\"lng\":117.113905,\"lat\":31.912862},{\"lng\":117.114405,\"lat\":31.912793},{\"lng\":117.115376,\"lat\":31.912098},{\"lng\":117.116848,\"lat\":31.911723},{\"lng\":117.118305,\"lat\":31.911056},{\"lng\":117.119165,\"lat\":31.911014},{\"lng\":117.120705,\"lat\":31.910527},{\"lng\":117.12269,\"lat\":31.910831},{\"lng\":117.124022,\"lat\":31.91083},{\"lng\":117.124743,\"lat\":31.910621},{\"lng\":117.125187,\"lat\":31.910079},{\"lng\":117.126838,\"lat\":31.909453},{\"lng\":117.128031,\"lat\":31.908453},{\"lng\":117.129265,\"lat\":31.907383},{\"lng\":117.130883,\"lat\":31.906047},{\"lng\":117.132991,\"lat\":31.903468},{\"lng\":117.134185,\"lat\":31.900999},{\"lng\":117.136512,\"lat\":31.89847},{\"lng\":117.139036,\"lat\":31.895828},{\"lng\":117.141088,\"lat\":31.894262},{\"lng\":117.14155,\"lat\":31.891335},{\"lng\":117.141832,\"lat\":31.891011},{\"lng\":117.142181,\"lat\":31.891021},{\"lng\":117.142544,\"lat\":31.89126},{\"lng\":117.142557,\"lat\":31.891494},{\"lng\":117.142326,\"lat\":31.891822},{\"lng\":117.142241,\"lat\":31.892817},{\"lng\":117.1423,\"lat\":31.893181},{\"lng\":117.142628,\"lat\":31.893363},{\"lng\":117.1427,\"lat\":31.893811},{\"lng\":117.143074,\"lat\":31.894211},{\"lng\":117.143298,\"lat\":31.894911},{\"lng\":117.144368,\"lat\":31.896294},{\"lng\":117.145011,\"lat\":31.896775},{\"lng\":117.145849,\"lat\":31.896662},{\"lng\":117.146595,\"lat\":31.896677},{\"lng\":117.147082,\"lat\":31.896836},{\"lng\":117.147736,\"lat\":31.897194},{\"lng\":117.148024,\"lat\":31.897908},{\"lng\":117.14885,\"lat\":31.898617},{\"lng\":117.14926,\"lat\":31.898808},{\"lng\":117.149941,\"lat\":31.898912},{\"lng\":117.150315,\"lat\":31.898878},{\"lng\":117.152437,\"lat\":31.898202},{\"lng\":117.153742,\"lat\":31.898308},{\"lng\":117.153998,\"lat\":31.898231},{\"lng\":117.154162,\"lat\":31.898088},{\"lng\":117.154198,\"lat\":31.89784},{\"lng\":117.153561,\"lat\":31.896735},{\"lng\":117.153982,\"lat\":31.89628},{\"lng\":117.154159,\"lat\":31.895366},{\"lng\":117.154685,\"lat\":31.89512},{\"lng\":117.155603,\"lat\":31.895071},{\"lng\":117.15588,\"lat\":31.895288},{\"lng\":117.15608,\"lat\":31.895761},{\"lng\":117.156422,\"lat\":31.896021},{\"lng\":117.156412,\"lat\":31.896431},{\"lng\":117.156485,\"lat\":31.896564},{\"lng\":117.156662,\"lat\":31.896619},{\"lng\":117.157176,\"lat\":31.896557},{\"lng\":117.157303,\"lat\":31.896434},{\"lng\":117.157408,\"lat\":31.89577},{\"lng\":117.157664,\"lat\":31.895243},{\"lng\":117.157652,\"lat\":31.895063},{\"lng\":117.157506,\"lat\":31.894909},{\"lng\":117.156945,\"lat\":31.894675},{\"lng\":117.156455,\"lat\":31.89459},{\"lng\":117.156449,\"lat\":31.894316},{\"lng\":117.156669,\"lat\":31.893957},{\"lng\":117.156904,\"lat\":31.89316},{\"lng\":117.157662,\"lat\":31.892732},{\"lng\":117.158067,\"lat\":31.891754},{\"lng\":117.158351,\"lat\":31.891531},{\"lng\":117.158674,\"lat\":31.891527},{\"lng\":117.15921,\"lat\":31.891747},{\"lng\":117.159616,\"lat\":31.89172},{\"lng\":117.159993,\"lat\":31.89153},{\"lng\":117.160209,\"lat\":31.891247},{\"lng\":117.160752,\"lat\":31.891071},{\"lng\":117.161081,\"lat\":31.890446},{\"lng\":117.161472,\"lat\":31.890055},{\"lng\":117.161947,\"lat\":31.889816},{\"lng\":117.16328,\"lat\":31.889558},{\"lng\":117.163413,\"lat\":31.889428},{\"lng\":117.163139,\"lat\":31.888962},{\"lng\":117.163074,\"lat\":31.888032},{\"lng\":117.16251,\"lat\":31.887552},{\"lng\":117.162112,\"lat\":31.88734},{\"lng\":117.161725,\"lat\":31.886508},{\"lng\":117.16082,\"lat\":31.885797},{\"lng\":117.160634,\"lat\":31.885387},{\"lng\":117.160538,\"lat\":31.884481},{\"lng\":117.159873,\"lat\":31.883816},{\"lng\":117.160179,\"lat\":31.883159},{\"lng\":117.160267,\"lat\":31.882703},{\"lng\":117.160142,\"lat\":31.882144},{\"lng\":117.159687,\"lat\":31.881382},{\"lng\":117.159418,\"lat\":31.8796},{\"lng\":117.159378,\"lat\":31.87855},{\"lng\":117.159427,\"lat\":31.878409},{\"lng\":117.159994,\"lat\":31.878032},{\"lng\":117.159848,\"lat\":31.877471},{\"lng\":117.159964,\"lat\":31.876949},{\"lng\":117.160761,\"lat\":31.877176},{\"lng\":117.161138,\"lat\":31.877104},{\"lng\":117.161259,\"lat\":31.877154},{\"lng\":117.161273,\"lat\":31.877708},{\"lng\":117.161529,\"lat\":31.878186},{\"lng\":117.161544,\"lat\":31.878591},{\"lng\":117.161974,\"lat\":31.87939},{\"lng\":117.161967,\"lat\":31.879935},{\"lng\":117.162303,\"lat\":31.880403},{\"lng\":117.162745,\"lat\":31.880616},{\"lng\":117.162853,\"lat\":31.880838},{\"lng\":117.163393,\"lat\":31.881187},{\"lng\":117.163856,\"lat\":31.881165},{\"lng\":117.164747,\"lat\":31.880695},{\"lng\":117.165017,\"lat\":31.880892},{\"lng\":117.165018,\"lat\":31.881088},{\"lng\":117.164382,\"lat\":31.88168},{\"lng\":117.164184,\"lat\":31.882063},{\"lng\":117.164281,\"lat\":31.883045},{\"lng\":117.164384,\"lat\":31.883244},{\"lng\":117.164588,\"lat\":31.883332},{\"lng\":117.165333,\"lat\":31.883165},{\"lng\":117.165215,\"lat\":31.883666},{\"lng\":117.1654,\"lat\":31.884144},{\"lng\":117.165195,\"lat\":31.884588},{\"lng\":117.165518,\"lat\":31.885049},{\"lng\":117.165782,\"lat\":31.885888},{\"lng\":117.166491,\"lat\":31.886509},{\"lng\":117.166431,\"lat\":31.886803},{\"lng\":117.166083,\"lat\":31.887129},{\"lng\":117.166174,\"lat\":31.887446},{\"lng\":117.166594,\"lat\":31.887785},{\"lng\":117.166975,\"lat\":31.887816},{\"lng\":117.167276,\"lat\":31.887581},{\"lng\":117.167431,\"lat\":31.887018},{\"lng\":117.167563,\"lat\":31.886876},{\"lng\":117.1686,\"lat\":31.886667},{\"lng\":117.169584,\"lat\":31.886578},{\"lng\":117.169858,\"lat\":31.886648},{\"lng\":117.170215,\"lat\":31.887067},{\"lng\":117.170612,\"lat\":31.887329},{\"lng\":117.170826,\"lat\":31.887626},{\"lng\":117.171222,\"lat\":31.887631},{\"lng\":117.171643,\"lat\":31.887164},{\"lng\":117.173369,\"lat\":31.886201},{\"lng\":117.173988,\"lat\":31.886192},{\"lng\":117.174646,\"lat\":31.886311},{\"lng\":117.175158,\"lat\":31.886234},{\"lng\":117.176048,\"lat\":31.886497},{\"lng\":117.176266,\"lat\":31.886449},{\"lng\":117.176325,\"lat\":31.886269},{\"lng\":117.17601,\"lat\":31.885823},{\"lng\":117.175922,\"lat\":31.88533},{\"lng\":117.175695,\"lat\":31.885005},{\"lng\":117.175626,\"lat\":31.884645},{\"lng\":117.176286,\"lat\":31.882306},{\"lng\":117.17641,\"lat\":31.880791},{\"lng\":117.175798,\"lat\":31.87991},{\"lng\":117.175739,\"lat\":31.879205},{\"lng\":117.175908,\"lat\":31.878929},{\"lng\":117.176911,\"lat\":31.878409},{\"lng\":117.177024,\"lat\":31.878431},{\"lng\":117.177429,\"lat\":31.878914},{\"lng\":117.177855,\"lat\":31.879172},{\"lng\":117.178097,\"lat\":31.879508},{\"lng\":117.178708,\"lat\":31.879734},{\"lng\":117.178797,\"lat\":31.880075},{\"lng\":117.178446,\"lat\":31.880655},{\"lng\":117.178581,\"lat\":31.881379},{\"lng\":117.178809,\"lat\":31.881502},{\"lng\":117.178875,\"lat\":31.881838},{\"lng\":117.178705,\"lat\":31.883315},{\"lng\":117.179194,\"lat\":31.883762},{\"lng\":117.179547,\"lat\":31.88373},{\"lng\":117.179685,\"lat\":31.883801},{\"lng\":117.179666,\"lat\":31.884575},{\"lng\":117.179817,\"lat\":31.884983},{\"lng\":117.18031,\"lat\":31.885441},{\"lng\":117.180798,\"lat\":31.885723},{\"lng\":117.181151,\"lat\":31.886114},{\"lng\":117.181672,\"lat\":31.886339},{\"lng\":117.182246,\"lat\":31.886162},{\"lng\":117.182356,\"lat\":31.885995},{\"lng\":117.182491,\"lat\":31.885296},{\"lng\":117.183251,\"lat\":31.88537},{\"lng\":117.183537,\"lat\":31.885237},{\"lng\":117.183914,\"lat\":31.884651},{\"lng\":117.184022,\"lat\":31.884226},{\"lng\":117.18361,\"lat\":31.883418},{\"lng\":117.183806,\"lat\":31.883341},{\"lng\":117.184243,\"lat\":31.883391},{\"lng\":117.184389,\"lat\":31.883141},{\"lng\":117.18465,\"lat\":31.883072},{\"lng\":117.185518,\"lat\":31.881794},{\"lng\":117.185729,\"lat\":31.881934},{\"lng\":117.185591,\"lat\":31.88274},{\"lng\":117.185597,\"lat\":31.883344},{\"lng\":117.185362,\"lat\":31.883714},{\"lng\":117.185485,\"lat\":31.88433},{\"lng\":117.185439,\"lat\":31.884826},{\"lng\":117.185499,\"lat\":31.884973},{\"lng\":117.186782,\"lat\":31.885451},{\"lng\":117.186932,\"lat\":31.885352},{\"lng\":117.18714,\"lat\":31.884889},{\"lng\":117.1875,\"lat\":31.884559},{\"lng\":117.189726,\"lat\":31.884558},{\"lng\":117.189922,\"lat\":31.884519},{\"lng\":117.190128,\"lat\":31.884349},{\"lng\":117.190566,\"lat\":31.883583},{\"lng\":117.190143,\"lat\":31.882963},{\"lng\":117.190125,\"lat\":31.882614},{\"lng\":117.190669,\"lat\":31.881934},{\"lng\":117.190748,\"lat\":31.881575},{\"lng\":117.191489,\"lat\":31.881036},{\"lng\":117.192162,\"lat\":31.879609},{\"lng\":117.192207,\"lat\":31.879228},{\"lng\":117.192061,\"lat\":31.878691},{\"lng\":117.192186,\"lat\":31.878184},{\"lng\":117.192129,\"lat\":31.877654},{\"lng\":117.192442,\"lat\":31.877004},{\"lng\":117.192451,\"lat\":31.876819},{\"lng\":117.192297,\"lat\":31.876668},{\"lng\":117.191994,\"lat\":31.876646},{\"lng\":117.191379,\"lat\":31.876908},{\"lng\":117.19067,\"lat\":31.876994},{\"lng\":117.190131,\"lat\":31.877314},{\"lng\":117.189862,\"lat\":31.877378},{\"lng\":117.189577,\"lat\":31.877296},{\"lng\":117.189296,\"lat\":31.876946},{\"lng\":117.189013,\"lat\":31.876921},{\"lng\":117.188502,\"lat\":31.877172},{\"lng\":117.188339,\"lat\":31.877447},{\"lng\":117.188023,\"lat\":31.877663}]', null, null, '蜀山区', null, '1');
INSERT INTO `fence` VALUES ('4', '340111', null, null, null, null, '[{\"lng\":117.299853,\"lat\":31.862463},{\"lng\":117.300015,\"lat\":31.86272},{\"lng\":117.301301,\"lat\":31.862402},{\"lng\":117.303008,\"lat\":31.861935},{\"lng\":117.304022,\"lat\":31.861345},{\"lng\":117.304937,\"lat\":31.860334},{\"lng\":117.305406,\"lat\":31.859376},{\"lng\":117.305414,\"lat\":31.859343},{\"lng\":117.305442,\"lat\":31.859292},{\"lng\":117.305456,\"lat\":31.859275},{\"lng\":117.305629,\"lat\":31.858066},{\"lng\":117.30548,\"lat\":31.856857},{\"lng\":117.304837,\"lat\":31.855351},{\"lng\":117.304565,\"lat\":31.854487},{\"lng\":117.304812,\"lat\":31.853427},{\"lng\":117.305529,\"lat\":31.852342},{\"lng\":117.30768,\"lat\":31.850519},{\"lng\":117.307709,\"lat\":31.850492},{\"lng\":117.30774,\"lat\":31.850469},{\"lng\":117.307853,\"lat\":31.850372},{\"lng\":117.30956,\"lat\":31.849265},{\"lng\":117.311242,\"lat\":31.848355},{\"lng\":117.311761,\"lat\":31.848192},{\"lng\":117.311807,\"lat\":31.84817},{\"lng\":117.31185,\"lat\":31.848164},{\"lng\":117.312256,\"lat\":31.848036},{\"lng\":117.315917,\"lat\":31.847039},{\"lng\":117.315943,\"lat\":31.847034},{\"lng\":117.316033,\"lat\":31.847007},{\"lng\":117.31605,\"lat\":31.847003},{\"lng\":117.316758,\"lat\":31.84681},{\"lng\":117.31792,\"lat\":31.846171},{\"lng\":117.321359,\"lat\":31.843661},{\"lng\":117.322002,\"lat\":31.843539},{\"lng\":117.323041,\"lat\":31.843713},{\"lng\":117.324228,\"lat\":31.84448},{\"lng\":117.325639,\"lat\":31.845914},{\"lng\":117.326282,\"lat\":31.846211},{\"lng\":117.326826,\"lat\":31.84636},{\"lng\":117.327445,\"lat\":31.846189},{\"lng\":117.328854,\"lat\":31.844711},{\"lng\":117.330141,\"lat\":31.843751},{\"lng\":117.331353,\"lat\":31.843236},{\"lng\":117.332912,\"lat\":31.842942},{\"lng\":117.333901,\"lat\":31.842747},{\"lng\":117.335657,\"lat\":31.841689},{\"lng\":117.338131,\"lat\":31.839819},{\"lng\":117.338551,\"lat\":31.839203},{\"lng\":117.338824,\"lat\":31.837724},{\"lng\":117.33912,\"lat\":31.836071},{\"lng\":117.339714,\"lat\":31.835159},{\"lng\":117.340159,\"lat\":31.834741},{\"lng\":117.343103,\"lat\":31.83371},{\"lng\":117.34622,\"lat\":31.832606},{\"lng\":117.348397,\"lat\":31.831253},{\"lng\":117.350276,\"lat\":31.829948},{\"lng\":117.351686,\"lat\":31.828249},{\"lng\":117.352082,\"lat\":31.82778},{\"lng\":117.35275,\"lat\":31.827634},{\"lng\":117.353887,\"lat\":31.827611},{\"lng\":117.355173,\"lat\":31.827786},{\"lng\":117.356583,\"lat\":31.827912},{\"lng\":117.358141,\"lat\":31.827224},{\"lng\":117.360268,\"lat\":31.825278},{\"lng\":117.361034,\"lat\":31.824515},{\"lng\":117.361801,\"lat\":31.824294},{\"lng\":117.362543,\"lat\":31.824246},{\"lng\":117.363507,\"lat\":31.824346},{\"lng\":117.365362,\"lat\":31.825262},{\"lng\":117.366697,\"lat\":31.825683},{\"lng\":117.367958,\"lat\":31.825857},{\"lng\":117.370159,\"lat\":31.825688},{\"lng\":117.371568,\"lat\":31.82495},{\"lng\":117.372334,\"lat\":31.823915},{\"lng\":117.372754,\"lat\":31.822311},{\"lng\":117.372803,\"lat\":31.821497},{\"lng\":117.372581,\"lat\":31.820066},{\"lng\":117.372432,\"lat\":31.819153},{\"lng\":117.372655,\"lat\":31.81829},{\"lng\":117.3731,\"lat\":31.817624},{\"lng\":117.374039,\"lat\":31.816787},{\"lng\":117.375102,\"lat\":31.816369},{\"lng\":117.376214,\"lat\":31.816197},{\"lng\":117.378142,\"lat\":31.816126},{\"lng\":117.379955,\"lat\":31.816259},{\"lng\":117.380552,\"lat\":31.815051},{\"lng\":117.380766,\"lat\":31.814695},{\"lng\":117.381052,\"lat\":31.813304},{\"lng\":117.380766,\"lat\":31.811806},{\"lng\":117.380265,\"lat\":31.810236},{\"lng\":117.379742,\"lat\":31.807797},{\"lng\":117.379883,\"lat\":31.807014},{\"lng\":117.380004,\"lat\":31.806553},{\"lng\":117.380024,\"lat\":31.806212},{\"lng\":117.380225,\"lat\":31.804888},{\"lng\":117.380546,\"lat\":31.803965},{\"lng\":117.380908,\"lat\":31.803284},{\"lng\":117.38141,\"lat\":31.802783},{\"lng\":117.381892,\"lat\":31.802402},{\"lng\":117.382395,\"lat\":31.802202},{\"lng\":117.383218,\"lat\":31.802042},{\"lng\":117.383982,\"lat\":31.801943},{\"lng\":117.384705,\"lat\":31.801963},{\"lng\":117.385549,\"lat\":31.802004},{\"lng\":117.386795,\"lat\":31.802166},{\"lng\":117.388241,\"lat\":31.802328},{\"lng\":117.389527,\"lat\":31.802429},{\"lng\":117.39027,\"lat\":31.80239},{\"lng\":117.391094,\"lat\":31.802209},{\"lng\":117.39238,\"lat\":31.801829},{\"lng\":117.393765,\"lat\":31.801148},{\"lng\":117.395071,\"lat\":31.800306},{\"lng\":117.395974,\"lat\":31.799444},{\"lng\":117.396858,\"lat\":31.798622},{\"lng\":117.397702,\"lat\":31.798101},{\"lng\":117.398886,\"lat\":31.797579},{\"lng\":117.401155,\"lat\":31.796657},{\"lng\":117.40256,\"lat\":31.796176},{\"lng\":117.403423,\"lat\":31.796036},{\"lng\":117.404467,\"lat\":31.795956},{\"lng\":117.405892,\"lat\":31.795655},{\"lng\":117.407137,\"lat\":31.795133},{\"lng\":117.408562,\"lat\":31.794311},{\"lng\":117.409585,\"lat\":31.793348},{\"lng\":117.410629,\"lat\":31.792144},{\"lng\":117.411491,\"lat\":31.790719},{\"lng\":117.411957,\"lat\":31.78951},{\"lng\":117.41229,\"lat\":31.788654},{\"lng\":117.412956,\"lat\":31.787821},{\"lng\":117.41399,\"lat\":31.786894},{\"lng\":117.414882,\"lat\":31.786501},{\"lng\":117.415702,\"lat\":31.786251},{\"lng\":117.416844,\"lat\":31.786001},{\"lng\":117.417771,\"lat\":31.785929},{\"lng\":117.418805,\"lat\":31.785965},{\"lng\":117.41991,\"lat\":31.786035},{\"lng\":117.421729,\"lat\":31.785571},{\"lng\":117.423547,\"lat\":31.784749},{\"lng\":117.424331,\"lat\":31.783928},{\"lng\":117.425222,\"lat\":31.782572},{\"lng\":117.426256,\"lat\":31.781038},{\"lng\":117.426861,\"lat\":31.780039},{\"lng\":117.427147,\"lat\":31.779396},{\"lng\":117.427574,\"lat\":31.778148},{\"lng\":117.427645,\"lat\":31.776614},{\"lng\":117.427574,\"lat\":31.775259},{\"lng\":117.427645,\"lat\":31.774617},{\"lng\":117.427788,\"lat\":31.774046},{\"lng\":117.428287,\"lat\":31.773475},{\"lng\":117.428714,\"lat\":31.773153},{\"lng\":117.429285,\"lat\":31.772832},{\"lng\":117.430211,\"lat\":31.77251},{\"lng\":117.431138,\"lat\":31.771938},{\"lng\":117.431743,\"lat\":31.77126},{\"lng\":117.432064,\"lat\":31.770475},{\"lng\":117.432135,\"lat\":31.769405},{\"lng\":117.432206,\"lat\":31.768121},{\"lng\":117.432135,\"lat\":31.766159},{\"lng\":117.432099,\"lat\":31.764875},{\"lng\":117.431885,\"lat\":31.763341},{\"lng\":117.431243,\"lat\":31.761666},{\"lng\":117.430424,\"lat\":31.760561},{\"lng\":117.429568,\"lat\":31.759777},{\"lng\":117.427929,\"lat\":31.758708},{\"lng\":117.425362,\"lat\":31.757533},{\"lng\":117.421405,\"lat\":31.755967},{\"lng\":117.419337,\"lat\":31.75529},{\"lng\":117.418053,\"lat\":31.754649},{\"lng\":117.416947,\"lat\":31.753829},{\"lng\":117.416412,\"lat\":31.753044},{\"lng\":117.415484,\"lat\":31.751154},{\"lng\":117.414878,\"lat\":31.749478},{\"lng\":117.414307,\"lat\":31.747909},{\"lng\":117.413594,\"lat\":31.746732},{\"lng\":117.412488,\"lat\":31.745091},{\"lng\":117.411025,\"lat\":31.74288},{\"lng\":117.409241,\"lat\":31.740812},{\"lng\":117.408278,\"lat\":31.739456},{\"lng\":117.407457,\"lat\":31.737138},{\"lng\":117.406458,\"lat\":31.734284},{\"lng\":117.405744,\"lat\":31.732215},{\"lng\":117.405101,\"lat\":31.730146},{\"lng\":117.404221,\"lat\":31.727935},{\"lng\":117.402793,\"lat\":31.725224},{\"lng\":117.401365,\"lat\":31.723464},{\"lng\":117.400603,\"lat\":31.72237},{\"lng\":117.400127,\"lat\":31.721323},{\"lng\":117.399985,\"lat\":31.720419},{\"lng\":117.400413,\"lat\":31.718898},{\"lng\":117.401412,\"lat\":31.717709},{\"lng\":117.404219,\"lat\":31.716188},{\"lng\":117.407441,\"lat\":31.714608},{\"lng\":117.409262,\"lat\":31.712574},{\"lng\":117.410404,\"lat\":31.709149},{\"lng\":117.411022,\"lat\":31.707247},{\"lng\":117.412401,\"lat\":31.704314},{\"lng\":117.413083,\"lat\":31.701755},{\"lng\":117.412633,\"lat\":31.700202},{\"lng\":117.411406,\"lat\":31.698239},{\"lng\":117.410107,\"lat\":31.696181},{\"lng\":117.40936,\"lat\":31.695869},{\"lng\":117.408652,\"lat\":31.693862},{\"lng\":117.408987,\"lat\":31.691111},{\"lng\":117.408994,\"lat\":31.687675},{\"lng\":117.408795,\"lat\":31.678856},{\"lng\":117.409138,\"lat\":31.675302},{\"lng\":117.409214,\"lat\":31.666888},{\"lng\":117.409015,\"lat\":31.664138},{\"lng\":117.408946,\"lat\":31.659953},{\"lng\":117.40996,\"lat\":31.65297},{\"lng\":117.41061,\"lat\":31.636922},{\"lng\":117.299282,\"lat\":31.656411},{\"lng\":117.297269,\"lat\":31.657023},{\"lng\":117.296286,\"lat\":31.657696},{\"lng\":117.296067,\"lat\":31.658479},{\"lng\":117.296648,\"lat\":31.660583},{\"lng\":117.296801,\"lat\":31.661994},{\"lng\":117.296064,\"lat\":31.662882},{\"lng\":117.294712,\"lat\":31.66372},{\"lng\":117.293609,\"lat\":31.663729},{\"lng\":117.289749,\"lat\":31.662547},{\"lng\":117.28589,\"lat\":31.660473},{\"lng\":117.284782,\"lat\":31.660151},{\"lng\":117.284068,\"lat\":31.660186},{\"lng\":117.282888,\"lat\":31.659614},{\"lng\":117.280495,\"lat\":31.658542},{\"lng\":117.279566,\"lat\":31.657257},{\"lng\":117.279101,\"lat\":31.656364},{\"lng\":117.278958,\"lat\":31.655116},{\"lng\":117.278996,\"lat\":31.652829},{\"lng\":117.279016,\"lat\":31.650983},{\"lng\":117.278996,\"lat\":31.65002},{\"lng\":117.278956,\"lat\":31.647652},{\"lng\":117.278795,\"lat\":31.646849},{\"lng\":117.278453,\"lat\":31.646126},{\"lng\":117.278031,\"lat\":31.645745},{\"lng\":117.277428,\"lat\":31.645423},{\"lng\":117.276664,\"lat\":31.645142},{\"lng\":117.276102,\"lat\":31.645001},{\"lng\":117.275499,\"lat\":31.645},{\"lng\":117.274655,\"lat\":31.64512},{\"lng\":117.272606,\"lat\":31.64564},{\"lng\":117.270818,\"lat\":31.646121},{\"lng\":117.269714,\"lat\":31.646261},{\"lng\":117.268749,\"lat\":31.64628},{\"lng\":117.267665,\"lat\":31.646079},{\"lng\":117.266179,\"lat\":31.645817},{\"lng\":117.265375,\"lat\":31.645757},{\"lng\":117.264572,\"lat\":31.645877},{\"lng\":117.263769,\"lat\":31.646137},{\"lng\":117.262885,\"lat\":31.646579},{\"lng\":117.261942,\"lat\":31.647321},{\"lng\":117.261038,\"lat\":31.648023},{\"lng\":117.260115,\"lat\":31.648725},{\"lng\":117.259191,\"lat\":31.649227},{\"lng\":117.258107,\"lat\":31.649708},{\"lng\":117.256943,\"lat\":31.65019},{\"lng\":117.256119,\"lat\":31.65039},{\"lng\":117.255076,\"lat\":31.65057},{\"lng\":117.254092,\"lat\":31.650892},{\"lng\":117.253008,\"lat\":31.651714},{\"lng\":117.252607,\"lat\":31.652256},{\"lng\":117.252326,\"lat\":31.652878},{\"lng\":117.252065,\"lat\":31.653741},{\"lng\":117.251985,\"lat\":31.654383},{\"lng\":117.251985,\"lat\":31.655065},{\"lng\":117.252025,\"lat\":31.655828},{\"lng\":117.251965,\"lat\":31.65667},{\"lng\":117.251844,\"lat\":31.657433},{\"lng\":117.251584,\"lat\":31.658015},{\"lng\":117.251142,\"lat\":31.658797},{\"lng\":117.250159,\"lat\":31.660885},{\"lng\":117.249356,\"lat\":31.662831},{\"lng\":117.249356,\"lat\":31.663333},{\"lng\":117.249497,\"lat\":31.663794},{\"lng\":117.249698,\"lat\":31.664496},{\"lng\":117.249738,\"lat\":31.665038},{\"lng\":117.249316,\"lat\":31.666102},{\"lng\":117.248714,\"lat\":31.666764},{\"lng\":117.247491,\"lat\":31.667426},{\"lng\":117.246648,\"lat\":31.667687},{\"lng\":117.246026,\"lat\":31.667768},{\"lng\":117.245404,\"lat\":31.667627},{\"lng\":117.2444,\"lat\":31.667387},{\"lng\":117.243517,\"lat\":31.667368},{\"lng\":117.242775,\"lat\":31.667468},{\"lng\":117.241953,\"lat\":31.66779},{\"lng\":117.24123,\"lat\":31.668553},{\"lng\":117.240569,\"lat\":31.669275},{\"lng\":117.240267,\"lat\":31.669717},{\"lng\":117.240207,\"lat\":31.670219},{\"lng\":117.240549,\"lat\":31.67064},{\"lng\":117.240468,\"lat\":31.671161},{\"lng\":117.240047,\"lat\":31.672004},{\"lng\":117.239465,\"lat\":31.672647},{\"lng\":117.238483,\"lat\":31.672948},{\"lng\":117.237319,\"lat\":31.67313},{\"lng\":117.236136,\"lat\":31.67315},{\"lng\":117.234852,\"lat\":31.673412},{\"lng\":117.233328,\"lat\":31.673955},{\"lng\":117.232566,\"lat\":31.674457},{\"lng\":117.232285,\"lat\":31.674767},{\"lng\":117.230637,\"lat\":31.676327},{\"lng\":117.226883,\"lat\":31.679506},{\"lng\":117.225408,\"lat\":31.68246},{\"lng\":117.22494,\"lat\":31.685412},{\"lng\":117.224202,\"lat\":31.687828},{\"lng\":117.222527,\"lat\":31.690312},{\"lng\":117.220382,\"lat\":31.693803},{\"lng\":117.218774,\"lat\":31.697428},{\"lng\":117.217903,\"lat\":31.699643},{\"lng\":117.217934,\"lat\":31.701343},{\"lng\":117.218367,\"lat\":31.703928},{\"lng\":117.221579,\"lat\":31.705853},{\"lng\":117.22629,\"lat\":31.707134},{\"lng\":117.227576,\"lat\":31.710562},{\"lng\":117.226788,\"lat\":31.718451},{\"lng\":117.227152,\"lat\":31.719044},{\"lng\":117.246688,\"lat\":31.730869},{\"lng\":117.259159,\"lat\":31.735365},{\"lng\":117.265027,\"lat\":31.743078},{\"lng\":117.27427,\"lat\":31.752906},{\"lng\":117.276213,\"lat\":31.756765},{\"lng\":117.276251,\"lat\":31.769574},{\"lng\":117.276876,\"lat\":31.773124},{\"lng\":117.276892,\"lat\":31.773141},{\"lng\":117.276886,\"lat\":31.77318},{\"lng\":117.27725,\"lat\":31.775242},{\"lng\":117.277455,\"lat\":31.776035},{\"lng\":117.277782,\"lat\":31.776217},{\"lng\":117.277611,\"lat\":31.776286},{\"lng\":117.277377,\"lat\":31.776632},{\"lng\":117.277716,\"lat\":31.777383},{\"lng\":117.276551,\"lat\":31.778931},{\"lng\":117.275689,\"lat\":31.77964},{\"lng\":117.275061,\"lat\":31.77998},{\"lng\":117.273984,\"lat\":31.779891},{\"lng\":117.273535,\"lat\":31.779937},{\"lng\":117.271913,\"lat\":31.780886},{\"lng\":117.271748,\"lat\":31.783778},{\"lng\":117.272058,\"lat\":31.784157},{\"lng\":117.27217,\"lat\":31.78534},{\"lng\":117.27201,\"lat\":31.786095},{\"lng\":117.27029,\"lat\":31.78851},{\"lng\":117.269826,\"lat\":31.789972},{\"lng\":117.268297,\"lat\":31.791212},{\"lng\":117.264863,\"lat\":31.791689},{\"lng\":117.26278,\"lat\":31.791727},{\"lng\":117.260296,\"lat\":31.791391},{\"lng\":117.257303,\"lat\":31.791325},{\"lng\":117.255329,\"lat\":31.791141},{\"lng\":117.253516,\"lat\":31.790638},{\"lng\":117.251573,\"lat\":31.789123},{\"lng\":117.249591,\"lat\":31.787867},{\"lng\":117.249047,\"lat\":31.787634},{\"lng\":117.247936,\"lat\":31.787966},{\"lng\":117.246653,\"lat\":31.788736},{\"lng\":117.244495,\"lat\":31.790833},{\"lng\":117.242033,\"lat\":31.793624},{\"lng\":117.240134,\"lat\":31.795283},{\"lng\":117.239138,\"lat\":31.796274},{\"lng\":117.239207,\"lat\":31.796985},{\"lng\":117.239847,\"lat\":31.798345},{\"lng\":117.240723,\"lat\":31.799459},{\"lng\":117.246369,\"lat\":31.806772},{\"lng\":117.247995,\"lat\":31.808825},{\"lng\":117.249189,\"lat\":31.810227},{\"lng\":117.250609,\"lat\":31.811928},{\"lng\":117.251153,\"lat\":31.812535},{\"lng\":117.252087,\"lat\":31.813662},{\"lng\":117.252388,\"lat\":31.813993},{\"lng\":117.253063,\"lat\":31.814805},{\"lng\":117.253786,\"lat\":31.815604},{\"lng\":117.254487,\"lat\":31.816391},{\"lng\":117.255475,\"lat\":31.817532},{\"lng\":117.255724,\"lat\":31.817863},{\"lng\":117.257122,\"lat\":31.819733},{\"lng\":117.257273,\"lat\":31.820614},{\"lng\":117.258417,\"lat\":31.821422},{\"lng\":117.259669,\"lat\":31.823064},{\"lng\":117.261002,\"lat\":31.824784},{\"lng\":117.261837,\"lat\":31.82588},{\"lng\":117.262629,\"lat\":31.82689},{\"lng\":117.26339,\"lat\":31.827939},{\"lng\":117.263782,\"lat\":31.828644},{\"lng\":117.26407,\"lat\":31.829323},{\"lng\":117.264376,\"lat\":31.83048},{\"lng\":117.265025,\"lat\":31.831374},{\"lng\":117.264899,\"lat\":31.831718},{\"lng\":117.264885,\"lat\":31.831796},{\"lng\":117.264854,\"lat\":31.831842},{\"lng\":117.26475,\"lat\":31.832126},{\"lng\":117.264796,\"lat\":31.832582},{\"lng\":117.26508,\"lat\":31.833027},{\"lng\":117.265104,\"lat\":31.833059},{\"lng\":117.265116,\"lat\":31.833144},{\"lng\":117.265115,\"lat\":31.833219},{\"lng\":117.265007,\"lat\":31.834195},{\"lng\":117.265138,\"lat\":31.834992},{\"lng\":117.265368,\"lat\":31.835952},{\"lng\":117.265629,\"lat\":31.836678},{\"lng\":117.266213,\"lat\":31.837894},{\"lng\":117.266857,\"lat\":31.838859},{\"lng\":117.267992,\"lat\":31.840409},{\"lng\":117.268876,\"lat\":31.841638},{\"lng\":117.269345,\"lat\":31.842334},{\"lng\":117.270013,\"lat\":31.843236},{\"lng\":117.270502,\"lat\":31.843931},{\"lng\":117.270773,\"lat\":31.844308},{\"lng\":117.27134,\"lat\":31.845113},{\"lng\":117.271266,\"lat\":31.845166},{\"lng\":117.271279,\"lat\":31.845187},{\"lng\":117.271389,\"lat\":31.845183},{\"lng\":117.271495,\"lat\":31.845334},{\"lng\":117.272097,\"lat\":31.846175},{\"lng\":117.272627,\"lat\":31.846924},{\"lng\":117.272998,\"lat\":31.847199},{\"lng\":117.273187,\"lat\":31.847514},{\"lng\":117.273246,\"lat\":31.847549},{\"lng\":117.27324,\"lat\":31.847605},{\"lng\":117.273764,\"lat\":31.848512},{\"lng\":117.274237,\"lat\":31.849173},{\"lng\":117.274245,\"lat\":31.849333},{\"lng\":117.274441,\"lat\":31.84947},{\"lng\":117.274929,\"lat\":31.850137},{\"lng\":117.275204,\"lat\":31.850312},{\"lng\":117.275221,\"lat\":31.850551},{\"lng\":117.275651,\"lat\":31.851156},{\"lng\":117.276155,\"lat\":31.851883},{\"lng\":117.276347,\"lat\":31.852247},{\"lng\":117.276537,\"lat\":31.85274},{\"lng\":117.276612,\"lat\":31.853063},{\"lng\":117.276637,\"lat\":31.853391},{\"lng\":117.27661,\"lat\":31.853411},{\"lng\":117.276594,\"lat\":31.853416},{\"lng\":117.276578,\"lat\":31.853434},{\"lng\":117.276535,\"lat\":31.853466},{\"lng\":117.276525,\"lat\":31.853557},{\"lng\":117.276613,\"lat\":31.853692},{\"lng\":117.277742,\"lat\":31.853556},{\"lng\":117.291656,\"lat\":31.856723},{\"lng\":117.298394,\"lat\":31.86015},{\"lng\":117.298566,\"lat\":31.860422},{\"lng\":117.298597,\"lat\":31.860479},{\"lng\":117.298622,\"lat\":31.860512},{\"lng\":117.299803,\"lat\":31.862384},{\"lng\":117.299836,\"lat\":31.862403},{\"lng\":117.299853,\"lat\":31.862463}]', null, null, '包河区', null, '1');
INSERT INTO `fence` VALUES ('5', '340121', null, null, null, null, '[{\"lng\":117.201096,\"lat\":32.53405},{\"lng\":117.200962,\"lat\":32.533388},{\"lng\":117.201517,\"lat\":32.530001},{\"lng\":117.202264,\"lat\":32.528116},{\"lng\":117.203963,\"lat\":32.525484},{\"lng\":117.204976,\"lat\":32.523649},{\"lng\":117.207078,\"lat\":32.52045},{\"lng\":117.209181,\"lat\":32.518439},{\"lng\":117.211208,\"lat\":32.516216},{\"lng\":117.211489,\"lat\":32.513868},{\"lng\":117.211093,\"lat\":32.511461},{\"lng\":117.210963,\"lat\":32.508649},{\"lng\":117.210388,\"lat\":32.507101},{\"lng\":117.209641,\"lat\":32.493941},{\"lng\":117.2105,\"lat\":32.482519},{\"lng\":117.211576,\"lat\":32.476268},{\"lng\":117.209424,\"lat\":32.474332},{\"lng\":117.209033,\"lat\":32.472541},{\"lng\":117.210607,\"lat\":32.470963},{\"lng\":117.213391,\"lat\":32.468171},{\"lng\":117.215014,\"lat\":32.464916},{\"lng\":117.215896,\"lat\":32.464357},{\"lng\":117.216963,\"lat\":32.463815},{\"lng\":117.217657,\"lat\":32.46354},{\"lng\":117.218723,\"lat\":32.463239},{\"lng\":117.21953,\"lat\":32.463017},{\"lng\":117.220752,\"lat\":32.462833},{\"lng\":117.222469,\"lat\":32.462677},{\"lng\":117.224273,\"lat\":32.462571},{\"lng\":117.228046,\"lat\":32.462508},{\"lng\":117.230935,\"lat\":32.462454},{\"lng\":117.233086,\"lat\":32.4624},{\"lng\":117.23503,\"lat\":32.462255},{\"lng\":117.236817,\"lat\":32.462019},{\"lng\":117.23936,\"lat\":32.461594},{\"lng\":117.240488,\"lat\":32.461333},{\"lng\":117.243248,\"lat\":32.460655},{\"lng\":117.244941,\"lat\":32.460122},{\"lng\":117.247666,\"lat\":32.45921},{\"lng\":117.250036,\"lat\":32.458402},{\"lng\":117.25311,\"lat\":32.457225},{\"lng\":117.255037,\"lat\":32.456522},{\"lng\":117.256792,\"lat\":32.455844},{\"lng\":117.258103,\"lat\":32.455326},{\"lng\":117.263263,\"lat\":32.453083},{\"lng\":117.26546,\"lat\":32.452094},{\"lng\":117.266894,\"lat\":32.451443},{\"lng\":117.275132,\"lat\":32.447057},{\"lng\":117.277157,\"lat\":32.445939},{\"lng\":117.28006,\"lat\":32.444433},{\"lng\":117.281338,\"lat\":32.443653},{\"lng\":117.282198,\"lat\":32.443141},{\"lng\":117.282928,\"lat\":32.442725},{\"lng\":117.284154,\"lat\":32.442801},{\"lng\":117.285276,\"lat\":32.442724},{\"lng\":117.290319,\"lat\":32.44284},{\"lng\":117.293024,\"lat\":32.443775},{\"lng\":117.29599,\"lat\":32.445628},{\"lng\":117.299774,\"lat\":32.448175},{\"lng\":117.303828,\"lat\":32.450725},{\"lng\":117.305986,\"lat\":32.451197},{\"lng\":117.308439,\"lat\":32.451214},{\"lng\":117.310345,\"lat\":32.450306},{\"lng\":117.313329,\"lat\":32.44872},{\"lng\":117.316331,\"lat\":32.446442},{\"lng\":117.317967,\"lat\":32.444848},{\"lng\":117.320142,\"lat\":32.443252},{\"lng\":117.324224,\"lat\":32.442361},{\"lng\":117.327209,\"lat\":32.441694},{\"lng\":117.329645,\"lat\":32.442625},{\"lng\":117.332892,\"lat\":32.443104},{\"lng\":117.336678,\"lat\":32.444505},{\"lng\":117.340472,\"lat\":32.445906},{\"lng\":117.343718,\"lat\":32.447761},{\"lng\":117.347234,\"lat\":32.449161},{\"lng\":117.350758,\"lat\":32.450789},{\"lng\":117.354552,\"lat\":32.452187},{\"lng\":117.358067,\"lat\":32.453586},{\"lng\":117.361582,\"lat\":32.454751},{\"lng\":117.365097,\"lat\":32.45592},{\"lng\":117.36835,\"lat\":32.457314},{\"lng\":117.371325,\"lat\":32.458937},{\"lng\":117.37349,\"lat\":32.460325},{\"lng\":117.375647,\"lat\":32.461717},{\"lng\":117.378082,\"lat\":32.463104},{\"lng\":117.380933,\"lat\":32.464366},{\"lng\":117.382855,\"lat\":32.466116},{\"lng\":117.384794,\"lat\":32.469456},{\"lng\":117.388132,\"lat\":32.473843},{\"lng\":117.391817,\"lat\":32.477},{\"lng\":117.394059,\"lat\":32.478288},{\"lng\":117.397082,\"lat\":32.47753},{\"lng\":117.400417,\"lat\":32.475253},{\"lng\":117.401842,\"lat\":32.472937},{\"lng\":117.404091,\"lat\":32.471396},{\"lng\":117.406227,\"lat\":32.469537},{\"lng\":117.408311,\"lat\":32.46859},{\"lng\":117.408649,\"lat\":32.467102},{\"lng\":117.407781,\"lat\":32.46561},{\"lng\":117.404793,\"lat\":32.46263},{\"lng\":117.40184,\"lat\":32.459317},{\"lng\":117.399365,\"lat\":32.457016},{\"lng\":117.397427,\"lat\":32.455962},{\"lng\":117.393752,\"lat\":32.452804},{\"lng\":117.391614,\"lat\":32.450073},{\"lng\":117.389711,\"lat\":32.446316},{\"lng\":117.387598,\"lat\":32.442629},{\"lng\":117.386025,\"lat\":32.438947},{\"lng\":117.384312,\"lat\":32.434989},{\"lng\":117.383391,\"lat\":32.433336},{\"lng\":117.382313,\"lat\":32.431},{\"lng\":117.382321,\"lat\":32.428703},{\"lng\":117.382329,\"lat\":32.426177},{\"lng\":117.382346,\"lat\":32.423651},{\"lng\":117.382364,\"lat\":32.420901},{\"lng\":117.382381,\"lat\":32.417001},{\"lng\":117.382937,\"lat\":32.414247},{\"lng\":117.382676,\"lat\":32.411951},{\"lng\":117.382415,\"lat\":32.409196},{\"lng\":117.381076,\"lat\":32.406208},{\"lng\":117.380284,\"lat\":32.402761},{\"lng\":117.378406,\"lat\":32.399998},{\"lng\":117.377327,\"lat\":32.398387},{\"lng\":117.375441,\"lat\":32.397228},{\"lng\":117.373006,\"lat\":32.395836},{\"lng\":117.37084,\"lat\":32.39422},{\"lng\":117.366796,\"lat\":32.392593},{\"lng\":117.36382,\"lat\":32.39097},{\"lng\":117.361384,\"lat\":32.389121},{\"lng\":117.359775,\"lat\":32.387276},{\"lng\":117.359235,\"lat\":32.384977},{\"lng\":117.362506,\"lat\":32.382931},{\"lng\":117.366568,\"lat\":32.382722},{\"lng\":117.369552,\"lat\":32.38251},{\"lng\":117.373613,\"lat\":32.383221},{\"lng\":117.376587,\"lat\":32.383465},{\"lng\":117.379561,\"lat\":32.383942},{\"lng\":117.383351,\"lat\":32.385105},{\"lng\":117.386593,\"lat\":32.386497},{\"lng\":117.389566,\"lat\":32.38766},{\"lng\":117.392547,\"lat\":32.388136},{\"lng\":117.395257,\"lat\":32.38608},{\"lng\":117.397438,\"lat\":32.382878},{\"lng\":117.399609,\"lat\":32.381051},{\"lng\":117.400972,\"lat\":32.37899},{\"lng\":117.403691,\"lat\":32.376705},{\"lng\":117.405323,\"lat\":32.375108},{\"lng\":117.410194,\"lat\":32.373287},{\"lng\":117.413449,\"lat\":32.372384},{\"lng\":117.416426,\"lat\":32.371478},{\"lng\":117.419671,\"lat\":32.371256},{\"lng\":117.423185,\"lat\":32.370579},{\"lng\":117.42643,\"lat\":32.370359},{\"lng\":117.43022,\"lat\":32.369681},{\"lng\":117.432648,\"lat\":32.368309},{\"lng\":117.437338,\"lat\":32.368264},{\"lng\":117.441706,\"lat\":32.366512},{\"lng\":117.442867,\"lat\":32.363011},{\"lng\":117.444617,\"lat\":32.356309},{\"lng\":117.445189,\"lat\":32.351063},{\"lng\":117.444902,\"lat\":32.346986},{\"lng\":117.444902,\"lat\":32.343487},{\"lng\":117.442284,\"lat\":32.341452},{\"lng\":117.437335,\"lat\":32.340295},{\"lng\":117.43065,\"lat\":32.339428},{\"lng\":117.426565,\"lat\":32.337685},{\"lng\":117.423346,\"lat\":32.334556},{\"lng\":117.421203,\"lat\":32.331337},{\"lng\":117.41932,\"lat\":32.328119},{\"lng\":117.4161,\"lat\":32.32421},{\"lng\":117.41261,\"lat\":32.319606},{\"lng\":117.409658,\"lat\":32.31455},{\"lng\":117.407253,\"lat\":32.30995},{\"lng\":117.406992,\"lat\":32.307886},{\"lng\":117.406193,\"lat\":32.30467},{\"lng\":117.404317,\"lat\":32.302139},{\"lng\":117.40271,\"lat\":32.298921},{\"lng\":117.401103,\"lat\":32.2957},{\"lng\":117.398958,\"lat\":32.292251},{\"lng\":117.39762,\"lat\":32.29018},{\"lng\":117.39682,\"lat\":32.288112},{\"lng\":117.39629,\"lat\":32.285586},{\"lng\":117.395751,\"lat\":32.283748},{\"lng\":117.396845,\"lat\":32.281689},{\"lng\":117.398756,\"lat\":32.278715},{\"lng\":117.400389,\"lat\":32.276426},{\"lng\":117.401744,\"lat\":32.274595},{\"lng\":117.404193,\"lat\":32.271625},{\"lng\":117.405035,\"lat\":32.269459},{\"lng\":117.405347,\"lat\":32.265632},{\"lng\":117.404253,\"lat\":32.261966},{\"lng\":117.402889,\"lat\":32.259677},{\"lng\":117.400978,\"lat\":32.256931},{\"lng\":117.399623,\"lat\":32.255099},{\"lng\":117.397998,\"lat\":32.253725},{\"lng\":117.395826,\"lat\":32.252355},{\"lng\":117.393932,\"lat\":32.251442},{\"lng\":117.392029,\"lat\":32.250302},{\"lng\":117.389874,\"lat\":32.249621},{\"lng\":117.385537,\"lat\":32.248255},{\"lng\":117.383642,\"lat\":32.247338},{\"lng\":117.380669,\"lat\":32.246885},{\"lng\":117.377956,\"lat\":32.246207},{\"lng\":117.373626,\"lat\":32.245297},{\"lng\":117.369843,\"lat\":32.244617},{\"lng\":117.367677,\"lat\":32.244618},{\"lng\":117.364972,\"lat\":32.243935},{\"lng\":117.362806,\"lat\":32.244168},{\"lng\":117.358743,\"lat\":32.242109},{\"lng\":117.356028,\"lat\":32.240507},{\"lng\":117.354401,\"lat\":32.239131},{\"lng\":117.351956,\"lat\":32.237989},{\"lng\":117.34978,\"lat\":32.235696},{\"lng\":117.348423,\"lat\":32.233862},{\"lng\":117.346787,\"lat\":32.23203},{\"lng\":117.34488,\"lat\":32.229047},{\"lng\":117.343244,\"lat\":32.226985},{\"lng\":117.342974,\"lat\":32.224691},{\"lng\":117.341877,\"lat\":32.222168},{\"lng\":117.341581,\"lat\":32.219188},{\"lng\":117.341581,\"lat\":32.217122},{\"lng\":117.341833,\"lat\":32.215059},{\"lng\":117.341555,\"lat\":32.212533},{\"lng\":117.341546,\"lat\":32.210011},{\"lng\":117.341806,\"lat\":32.207944},{\"lng\":117.342058,\"lat\":32.203818},{\"lng\":117.343389,\"lat\":32.199459},{\"lng\":117.34392,\"lat\":32.19762},{\"lng\":117.344721,\"lat\":32.194868},{\"lng\":117.345799,\"lat\":32.193032},{\"lng\":117.346591,\"lat\":32.190503},{\"lng\":117.34847,\"lat\":32.187983},{\"lng\":117.351437,\"lat\":32.186142},{\"lng\":117.355492,\"lat\":32.185448},{\"lng\":117.358189,\"lat\":32.184986},{\"lng\":117.361973,\"lat\":32.183604},{\"lng\":117.364131,\"lat\":32.181537},{\"lng\":117.364652,\"lat\":32.179243},{\"lng\":117.366,\"lat\":32.177405},{\"lng\":117.36734,\"lat\":32.175337},{\"lng\":117.369218,\"lat\":32.173039},{\"lng\":117.370296,\"lat\":32.171431},{\"lng\":117.372453,\"lat\":32.171427},{\"lng\":117.374879,\"lat\":32.171422},{\"lng\":117.377314,\"lat\":32.171646},{\"lng\":117.379479,\"lat\":32.171644},{\"lng\":117.382174,\"lat\":32.171636},{\"lng\":117.385138,\"lat\":32.171171},{\"lng\":117.387033,\"lat\":32.169562},{\"lng\":117.386198,\"lat\":32.16612},{\"lng\":117.384303,\"lat\":32.164064},{\"lng\":117.382677,\"lat\":32.162461},{\"lng\":117.380226,\"lat\":32.160401},{\"lng\":117.37833,\"lat\":32.15903},{\"lng\":117.376165,\"lat\":32.157888},{\"lng\":117.373182,\"lat\":32.156286},{\"lng\":117.370756,\"lat\":32.154913},{\"lng\":117.367772,\"lat\":32.153544},{\"lng\":117.365067,\"lat\":32.152861},{\"lng\":117.361822,\"lat\":32.151947},{\"lng\":117.359108,\"lat\":32.150573},{\"lng\":117.356132,\"lat\":32.149433},{\"lng\":117.354236,\"lat\":32.147827},{\"lng\":117.352339,\"lat\":32.146912},{\"lng\":117.35179,\"lat\":32.145078},{\"lng\":117.353939,\"lat\":32.142551},{\"lng\":117.356088,\"lat\":32.140255},{\"lng\":117.357428,\"lat\":32.1375},{\"lng\":117.35768,\"lat\":32.134061},{\"lng\":117.356861,\"lat\":32.132224},{\"lng\":117.354965,\"lat\":32.130852},{\"lng\":117.352528,\"lat\":32.130398},{\"lng\":117.350362,\"lat\":32.129483},{\"lng\":117.347386,\"lat\":32.129026},{\"lng\":117.3436,\"lat\":32.128113},{\"lng\":117.340633,\"lat\":32.127886},{\"lng\":117.337926,\"lat\":32.127431},{\"lng\":117.333601,\"lat\":32.127434},{\"lng\":117.330085,\"lat\":32.126752},{\"lng\":117.327109,\"lat\":32.126068},{\"lng\":117.32683,\"lat\":32.123999},{\"lng\":117.32736,\"lat\":32.120559},{\"lng\":117.327073,\"lat\":32.117805},{\"lng\":117.325976,\"lat\":32.114824},{\"lng\":117.323809,\"lat\":32.111845},{\"lng\":117.322982,\"lat\":32.109553},{\"lng\":117.321624,\"lat\":32.107719},{\"lng\":117.321337,\"lat\":32.104049},{\"lng\":117.322407,\"lat\":32.101294},{\"lng\":117.325104,\"lat\":32.100145},{\"lng\":117.327802,\"lat\":32.098768},{\"lng\":117.329952,\"lat\":32.098535},{\"lng\":117.332119,\"lat\":32.098533},{\"lng\":117.334555,\"lat\":32.098763},{\"lng\":117.338063,\"lat\":32.099444},{\"lng\":117.340499,\"lat\":32.099213},{\"lng\":117.342658,\"lat\":32.098982},{\"lng\":117.345355,\"lat\":32.097143},{\"lng\":117.346956,\"lat\":32.095078},{\"lng\":117.348026,\"lat\":32.092095},{\"lng\":117.348017,\"lat\":32.089112},{\"lng\":117.346651,\"lat\":32.086592},{\"lng\":117.342856,\"lat\":32.084301},{\"lng\":117.33961,\"lat\":32.081782},{\"lng\":117.335824,\"lat\":32.08018},{\"lng\":117.333657,\"lat\":32.079722},{\"lng\":117.330141,\"lat\":32.078579},{\"lng\":117.328505,\"lat\":32.076749},{\"lng\":117.326338,\"lat\":32.073766},{\"lng\":117.32578,\"lat\":32.070786},{\"lng\":117.326851,\"lat\":32.068488},{\"lng\":117.32819,\"lat\":32.065279},{\"lng\":117.328991,\"lat\":32.063439},{\"lng\":117.33087,\"lat\":32.060917},{\"lng\":117.33248,\"lat\":32.059082},{\"lng\":117.334099,\"lat\":32.057706},{\"lng\":117.335439,\"lat\":32.056098},{\"lng\":117.336779,\"lat\":32.054486},{\"lng\":117.338659,\"lat\":32.052882},{\"lng\":117.340817,\"lat\":32.05242},{\"lng\":117.345681,\"lat\":32.052186},{\"lng\":117.347839,\"lat\":32.052182},{\"lng\":117.350815,\"lat\":32.052866},{\"lng\":117.355949,\"lat\":32.054465},{\"lng\":117.358655,\"lat\":32.054923},{\"lng\":117.361352,\"lat\":32.055375},{\"lng\":117.364318,\"lat\":32.055371},{\"lng\":117.366754,\"lat\":32.056054},{\"lng\":117.369181,\"lat\":32.056283},{\"lng\":117.371877,\"lat\":32.056508},{\"lng\":117.374842,\"lat\":32.055813},{\"lng\":117.376998,\"lat\":32.054889},{\"lng\":117.378885,\"lat\":32.053277},{\"lng\":117.381571,\"lat\":32.051438},{\"lng\":117.383718,\"lat\":32.049828},{\"lng\":117.386134,\"lat\":32.047073},{\"lng\":117.388281,\"lat\":32.045233},{\"lng\":117.390688,\"lat\":32.042931},{\"lng\":117.391218,\"lat\":32.040177},{\"lng\":117.39067,\"lat\":32.037886},{\"lng\":117.388228,\"lat\":32.036285},{\"lng\":117.382839,\"lat\":32.03607},{\"lng\":117.380952,\"lat\":32.035157},{\"lng\":117.377979,\"lat\":32.034018},{\"lng\":117.376883,\"lat\":32.032409},{\"lng\":117.375257,\"lat\":32.029433},{\"lng\":117.374709,\"lat\":32.027369},{\"lng\":117.3747,\"lat\":32.025305},{\"lng\":117.374673,\"lat\":32.021634},{\"lng\":117.374125,\"lat\":32.018883},{\"lng\":117.373838,\"lat\":32.015675},{\"lng\":117.373829,\"lat\":32.01338},{\"lng\":117.37516,\"lat\":32.010624},{\"lng\":117.378646,\"lat\":32.006949},{\"lng\":117.380524,\"lat\":32.005109},{\"lng\":117.383479,\"lat\":32.002582},{\"lng\":117.385087,\"lat\":32.001199},{\"lng\":117.386391,\"lat\":31.99813},{\"lng\":117.383026,\"lat\":31.9923},{\"lng\":117.380435,\"lat\":31.983625},{\"lng\":117.380097,\"lat\":31.981374},{\"lng\":117.381903,\"lat\":31.977626},{\"lng\":117.382233,\"lat\":31.976126},{\"lng\":117.382446,\"lat\":31.975163},{\"lng\":117.383124,\"lat\":31.967606},{\"lng\":117.383132,\"lat\":31.965767},{\"lng\":117.382994,\"lat\":31.964685},{\"lng\":117.382322,\"lat\":31.963884},{\"lng\":117.38158,\"lat\":31.963534},{\"lng\":117.379762,\"lat\":31.963132},{\"lng\":117.377538,\"lat\":31.962847},{\"lng\":117.372555,\"lat\":31.961692},{\"lng\":117.368786,\"lat\":31.959966},{\"lng\":117.366362,\"lat\":31.95859},{\"lng\":117.365957,\"lat\":31.958077},{\"lng\":117.365758,\"lat\":31.957275},{\"lng\":117.365758,\"lat\":31.956472},{\"lng\":117.366094,\"lat\":31.954867},{\"lng\":117.367448,\"lat\":31.952575},{\"lng\":117.368999,\"lat\":31.949661},{\"lng\":117.369137,\"lat\":31.947542},{\"lng\":117.368937,\"lat\":31.94582},{\"lng\":117.368471,\"lat\":31.943765},{\"lng\":117.367056,\"lat\":31.942559},{\"lng\":117.365175,\"lat\":31.942356},{\"lng\":117.361886,\"lat\":31.942524},{\"lng\":117.358364,\"lat\":31.942182},{\"lng\":117.355694,\"lat\":31.941773},{\"lng\":117.355105,\"lat\":31.941787},{\"lng\":117.353352,\"lat\":31.941265},{\"lng\":117.352546,\"lat\":31.940325},{\"lng\":117.351926,\"lat\":31.937167},{\"lng\":117.352001,\"lat\":31.936817},{\"lng\":117.352832,\"lat\":31.935617},{\"lng\":117.353504,\"lat\":31.934894},{\"lng\":117.354143,\"lat\":31.933299},{\"lng\":117.354625,\"lat\":31.932622},{\"lng\":117.354895,\"lat\":31.931687},{\"lng\":117.354891,\"lat\":31.930573},{\"lng\":117.353823,\"lat\":31.929183},{\"lng\":117.353697,\"lat\":31.928653},{\"lng\":117.353312,\"lat\":31.927819},{\"lng\":117.3508,\"lat\":31.925259},{\"lng\":117.348801,\"lat\":31.923777},{\"lng\":117.346831,\"lat\":31.923122},{\"lng\":117.345809,\"lat\":31.923144},{\"lng\":117.342318,\"lat\":31.924284},{\"lng\":117.3419,\"lat\":31.924556},{\"lng\":117.34111,\"lat\":31.925433},{\"lng\":117.340666,\"lat\":31.926499},{\"lng\":117.338417,\"lat\":31.930549},{\"lng\":117.33581,\"lat\":31.93449},{\"lng\":117.332871,\"lat\":31.935505},{\"lng\":117.326006,\"lat\":31.938177},{\"lng\":117.323209,\"lat\":31.939114},{\"lng\":117.320953,\"lat\":31.939478},{\"lng\":117.316502,\"lat\":31.939985},{\"lng\":117.314009,\"lat\":31.940041},{\"lng\":117.310973,\"lat\":31.939971},{\"lng\":117.307876,\"lat\":31.939675},{\"lng\":117.302346,\"lat\":31.939499},{\"lng\":117.29725,\"lat\":31.939027},{\"lng\":117.295425,\"lat\":31.93855},{\"lng\":117.292049,\"lat\":31.937696},{\"lng\":117.289549,\"lat\":31.937292},{\"lng\":117.288877,\"lat\":31.937059},{\"lng\":117.287738,\"lat\":31.937177},{\"lng\":117.287057,\"lat\":31.937403},{\"lng\":117.286584,\"lat\":31.941064},{\"lng\":117.28637,\"lat\":31.945708},{\"lng\":117.286027,\"lat\":31.948855},{\"lng\":117.285485,\"lat\":31.950001},{\"lng\":117.284201,\"lat\":31.951084},{\"lng\":117.282313,\"lat\":31.952168},{\"lng\":117.279678,\"lat\":31.955084},{\"lng\":117.278401,\"lat\":31.955996},{\"lng\":117.277118,\"lat\":31.956737},{\"lng\":117.275835,\"lat\":31.957135},{\"lng\":117.272603,\"lat\":31.957077},{\"lng\":117.270793,\"lat\":31.956331},{\"lng\":117.269441,\"lat\":31.955521},{\"lng\":117.268372,\"lat\":31.955063},{\"lng\":117.2624,\"lat\":31.953286},{\"lng\":117.261085,\"lat\":31.952688},{\"lng\":117.259619,\"lat\":31.952161},{\"lng\":117.258347,\"lat\":31.951822},{\"lng\":117.255908,\"lat\":31.952015},{\"lng\":117.252919,\"lat\":31.952739},{\"lng\":117.252086,\"lat\":31.952732},{\"lng\":117.250546,\"lat\":31.952183},{\"lng\":117.249332,\"lat\":31.951375},{\"lng\":117.247629,\"lat\":31.94933},{\"lng\":117.244963,\"lat\":31.939712},{\"lng\":117.241862,\"lat\":31.931441},{\"lng\":117.239901,\"lat\":31.929915},{\"lng\":117.238391,\"lat\":31.931194},{\"lng\":117.237597,\"lat\":31.932323},{\"lng\":117.23627,\"lat\":31.932993},{\"lng\":117.234943,\"lat\":31.933213},{\"lng\":117.233624,\"lat\":31.933667},{\"lng\":117.232297,\"lat\":31.934338},{\"lng\":117.230971,\"lat\":31.935234},{\"lng\":117.22991,\"lat\":31.936355},{\"lng\":117.229644,\"lat\":31.937483},{\"lng\":117.230323,\"lat\":31.94035},{\"lng\":117.22879,\"lat\":31.941055},{\"lng\":117.227106,\"lat\":31.941691},{\"lng\":117.225154,\"lat\":31.942373},{\"lng\":117.22388,\"lat\":31.942602},{\"lng\":117.220451,\"lat\":31.942143},{\"lng\":117.218172,\"lat\":31.941112},{\"lng\":117.214346,\"lat\":31.939627},{\"lng\":117.21113,\"lat\":31.938826},{\"lng\":117.205758,\"lat\":31.937111},{\"lng\":117.203213,\"lat\":31.936416},{\"lng\":117.19657,\"lat\":31.935274},{\"lng\":117.195024,\"lat\":31.934873},{\"lng\":117.193888,\"lat\":31.934246},{\"lng\":117.192951,\"lat\":31.932473},{\"lng\":117.191344,\"lat\":31.929953},{\"lng\":117.189881,\"lat\":31.927894},{\"lng\":117.188944,\"lat\":31.926914},{\"lng\":117.187871,\"lat\":31.926349},{\"lng\":117.185654,\"lat\":31.926284},{\"lng\":117.18391,\"lat\":31.927093},{\"lng\":117.183232,\"lat\":31.927888},{\"lng\":117.182897,\"lat\":31.929034},{\"lng\":117.182616,\"lat\":31.931388},{\"lng\":117.18308,\"lat\":31.933677},{\"lng\":117.183142,\"lat\":31.935967},{\"lng\":117.183606,\"lat\":31.937688},{\"lng\":117.183531,\"lat\":31.939572},{\"lng\":117.183187,\"lat\":31.941061},{\"lng\":117.182106,\"lat\":31.943409},{\"lng\":117.180629,\"lat\":31.944784},{\"lng\":117.176928,\"lat\":31.947708},{\"lng\":117.174841,\"lat\":31.949257},{\"lng\":117.172754,\"lat\":31.950517},{\"lng\":117.17181,\"lat\":31.952233},{\"lng\":117.170934,\"lat\":31.953498},{\"lng\":117.169784,\"lat\":31.954584},{\"lng\":117.168108,\"lat\":31.955554},{\"lng\":117.166554,\"lat\":31.956704},{\"lng\":117.165077,\"lat\":31.957105},{\"lng\":117.164391,\"lat\":31.957009},{\"lng\":117.164393,\"lat\":31.956396},{\"lng\":117.164313,\"lat\":31.955855},{\"lng\":117.164048,\"lat\":31.955083},{\"lng\":117.163612,\"lat\":31.954226},{\"lng\":117.163251,\"lat\":31.953715},{\"lng\":117.16274,\"lat\":31.953204},{\"lng\":117.160256,\"lat\":31.951572},{\"lng\":117.156526,\"lat\":31.949164},{\"lng\":117.154373,\"lat\":31.947824},{\"lng\":117.152265,\"lat\":31.946576},{\"lng\":117.151792,\"lat\":31.946384},{\"lng\":117.151318,\"lat\":31.94625},{\"lng\":117.150766,\"lat\":31.946126},{\"lng\":117.150293,\"lat\":31.94606},{\"lng\":117.148433,\"lat\":31.94604},{\"lng\":117.1469,\"lat\":31.946042},{\"lng\":117.144431,\"lat\":31.945978},{\"lng\":117.142435,\"lat\":31.945981},{\"lng\":117.141477,\"lat\":31.946095},{\"lng\":117.140688,\"lat\":31.946266},{\"lng\":117.139459,\"lat\":31.946673},{\"lng\":117.138196,\"lat\":31.947285},{\"lng\":117.137227,\"lat\":31.94785},{\"lng\":117.135772,\"lat\":31.94845},{\"lng\":117.134408,\"lat\":31.94905},{\"lng\":117.133438,\"lat\":31.949457},{\"lng\":117.132581,\"lat\":31.94974},{\"lng\":117.128972,\"lat\":31.950726},{\"lng\":117.12755,\"lat\":31.951066},{\"lng\":117.126952,\"lat\":31.951303},{\"lng\":117.126501,\"lat\":31.951518},{\"lng\":117.126069,\"lat\":31.951951},{\"lng\":117.125933,\"lat\":31.952237},{\"lng\":117.125557,\"lat\":31.952598},{\"lng\":117.124715,\"lat\":31.953321},{\"lng\":117.123797,\"lat\":31.954105},{\"lng\":117.123241,\"lat\":31.954496},{\"lng\":117.122684,\"lat\":31.954767},{\"lng\":117.119961,\"lat\":31.955943},{\"lng\":117.117614,\"lat\":31.956937},{\"lng\":117.11614,\"lat\":31.95742},{\"lng\":117.115312,\"lat\":31.957631},{\"lng\":117.114906,\"lat\":31.957676},{\"lng\":117.114514,\"lat\":31.957676},{\"lng\":117.113566,\"lat\":31.957646},{\"lng\":117.113055,\"lat\":31.957632},{\"lng\":117.112678,\"lat\":31.957707},{\"lng\":117.112242,\"lat\":31.957873},{\"lng\":117.111625,\"lat\":31.958264},{\"lng\":117.110692,\"lat\":31.958926},{\"lng\":117.110346,\"lat\":31.959107},{\"lng\":117.11003,\"lat\":31.959198},{\"lng\":117.109217,\"lat\":31.959333},{\"lng\":117.10869,\"lat\":31.959454},{\"lng\":117.107937,\"lat\":31.959755},{\"lng\":117.106101,\"lat\":31.960582},{\"lng\":117.105092,\"lat\":31.961184},{\"lng\":117.10473,\"lat\":31.961485},{\"lng\":117.10446,\"lat\":31.961756},{\"lng\":117.104189,\"lat\":31.962117},{\"lng\":117.103827,\"lat\":31.962523},{\"lng\":117.103375,\"lat\":31.962839},{\"lng\":117.102352,\"lat\":31.963231},{\"lng\":117.101001,\"lat\":31.963672},{\"lng\":117.099857,\"lat\":31.963952},{\"lng\":117.098893,\"lat\":31.964073},{\"lng\":117.098431,\"lat\":31.964032},{\"lng\":117.098049,\"lat\":31.963892},{\"lng\":117.097467,\"lat\":31.963451},{\"lng\":117.096643,\"lat\":31.962607},{\"lng\":117.096297,\"lat\":31.96219},{\"lng\":117.095789,\"lat\":31.961718},{\"lng\":117.095412,\"lat\":31.961447},{\"lng\":117.095231,\"lat\":31.961206},{\"lng\":117.095352,\"lat\":31.960649},{\"lng\":117.095322,\"lat\":31.959867},{\"lng\":117.094764,\"lat\":31.958362},{\"lng\":117.093995,\"lat\":31.956872},{\"lng\":117.093468,\"lat\":31.955999},{\"lng\":117.093107,\"lat\":31.955744},{\"lng\":117.09238,\"lat\":31.955649},{\"lng\":117.090594,\"lat\":31.955614},{\"lng\":117.089667,\"lat\":31.955636},{\"lng\":117.089136,\"lat\":31.955726},{\"lng\":117.088662,\"lat\":31.955929},{\"lng\":117.086831,\"lat\":31.956876},{\"lng\":117.086503,\"lat\":31.957},{\"lng\":117.08487,\"lat\":31.957258},{\"lng\":117.08325,\"lat\":31.957451},{\"lng\":117.082945,\"lat\":31.957493},{\"lng\":117.082589,\"lat\":31.957501},{\"lng\":117.081698,\"lat\":31.95748},{\"lng\":117.08093,\"lat\":31.957423},{\"lng\":117.080387,\"lat\":31.957366},{\"lng\":117.078928,\"lat\":31.957308},{\"lng\":117.078476,\"lat\":31.957375},{\"lng\":117.078114,\"lat\":31.957522},{\"lng\":117.077447,\"lat\":31.957972},{\"lng\":117.076485,\"lat\":31.958874},{\"lng\":117.076045,\"lat\":31.959291},{\"lng\":117.075604,\"lat\":31.959561},{\"lng\":117.07514,\"lat\":31.959797},{\"lng\":117.073704,\"lat\":31.960243},{\"lng\":117.0731,\"lat\":31.960423},{\"lng\":117.072633,\"lat\":31.960663},{\"lng\":117.071622,\"lat\":31.961188},{\"lng\":117.070989,\"lat\":31.961564},{\"lng\":117.070295,\"lat\":31.962014},{\"lng\":117.069722,\"lat\":31.962329},{\"lng\":117.069209,\"lat\":31.962539},{\"lng\":117.06841,\"lat\":31.962733},{\"lng\":117.067761,\"lat\":31.962837},{\"lng\":117.067383,\"lat\":31.962893},{\"lng\":117.067312,\"lat\":31.963168},{\"lng\":117.067175,\"lat\":31.964116},{\"lng\":117.067297,\"lat\":31.965918},{\"lng\":117.068628,\"lat\":31.970103},{\"lng\":117.070365,\"lat\":31.973666},{\"lng\":117.07077,\"lat\":31.974983},{\"lng\":117.072705,\"lat\":31.978943},{\"lng\":117.073431,\"lat\":31.981404},{\"lng\":117.073898,\"lat\":31.983235},{\"lng\":117.073952,\"lat\":31.985985},{\"lng\":117.073745,\"lat\":31.986787},{\"lng\":117.073271,\"lat\":31.987301},{\"lng\":117.071918,\"lat\":31.987868},{\"lng\":117.070909,\"lat\":31.987867},{\"lng\":117.068534,\"lat\":31.987473},{\"lng\":117.065739,\"lat\":31.987769},{\"lng\":117.064133,\"lat\":31.988215},{\"lng\":117.06158,\"lat\":31.990362},{\"lng\":117.05768,\"lat\":31.993244},{\"lng\":117.054106,\"lat\":31.994744},{\"lng\":117.047671,\"lat\":31.994871},{\"lng\":117.046686,\"lat\":31.995066},{\"lng\":117.046473,\"lat\":31.995202},{\"lng\":117.044461,\"lat\":31.998059},{\"lng\":117.041691,\"lat\":32.001081},{\"lng\":117.038991,\"lat\":32.00268},{\"lng\":117.03521,\"lat\":32.00428},{\"lng\":117.032509,\"lat\":32.006336},{\"lng\":117.029948,\"lat\":32.007019},{\"lng\":117.031299,\"lat\":32.009544},{\"lng\":117.032919,\"lat\":32.011154},{\"lng\":117.035629,\"lat\":32.015288},{\"lng\":117.037259,\"lat\":32.018731},{\"lng\":117.03888,\"lat\":32.021942},{\"lng\":117.04077,\"lat\":32.024244},{\"lng\":117.041859,\"lat\":32.026996},{\"lng\":117.04294,\"lat\":32.02952},{\"lng\":117.04456,\"lat\":32.033193},{\"lng\":117.045379,\"lat\":32.035716},{\"lng\":117.045928,\"lat\":32.03916},{\"lng\":117.046738,\"lat\":32.041225},{\"lng\":117.046739,\"lat\":32.043519},{\"lng\":117.047017,\"lat\":32.045811},{\"lng\":117.047018,\"lat\":32.049022},{\"lng\":117.047018,\"lat\":32.051775},{\"lng\":117.045677,\"lat\":32.054755},{\"lng\":117.043247,\"lat\":32.05704},{\"lng\":117.041087,\"lat\":32.058875},{\"lng\":117.038927,\"lat\":32.060477},{\"lng\":117.036217,\"lat\":32.061848},{\"lng\":117.033247,\"lat\":32.062987},{\"lng\":117.030546,\"lat\":32.064586},{\"lng\":117.028385,\"lat\":32.067105},{\"lng\":117.027043,\"lat\":32.068707},{\"lng\":117.025692,\"lat\":32.070308},{\"lng\":117.024612,\"lat\":32.072597},{\"lng\":117.023532,\"lat\":32.074433},{\"lng\":117.023532,\"lat\":32.076724},{\"lng\":117.022722,\"lat\":32.079475},{\"lng\":117.022182,\"lat\":32.081995},{\"lng\":117.02192,\"lat\":32.08429},{\"lng\":117.02165,\"lat\":32.086352},{\"lng\":117.021101,\"lat\":32.088186},{\"lng\":117.02084,\"lat\":32.090481},{\"lng\":117.020849,\"lat\":32.092314},{\"lng\":117.0203,\"lat\":32.095526},{\"lng\":117.019499,\"lat\":32.098043},{\"lng\":117.018418,\"lat\":32.100565},{\"lng\":117.016797,\"lat\":32.104001},{\"lng\":117.015978,\"lat\":32.106294},{\"lng\":117.015177,\"lat\":32.108583},{\"lng\":117.012475,\"lat\":32.112249},{\"lng\":117.010314,\"lat\":32.114995},{\"lng\":117.006801,\"lat\":32.11682},{\"lng\":117.004631,\"lat\":32.116814},{\"lng\":117.001929,\"lat\":32.116806},{\"lng\":116.997588,\"lat\":32.117711},{\"lng\":116.995427,\"lat\":32.118852},{\"lng\":116.991915,\"lat\":32.120909},{\"lng\":116.990023,\"lat\":32.122049},{\"lng\":116.988934,\"lat\":32.124341},{\"lng\":116.987584,\"lat\":32.126401},{\"lng\":116.985963,\"lat\":32.12823},{\"lng\":116.984883,\"lat\":32.130748},{\"lng\":116.984072,\"lat\":32.133499},{\"lng\":116.982992,\"lat\":32.135101},{\"lng\":116.981633,\"lat\":32.139459},{\"lng\":116.981642,\"lat\":32.142212},{\"lng\":116.981102,\"lat\":32.144502},{\"lng\":116.979211,\"lat\":32.148166},{\"lng\":116.978662,\"lat\":32.15046},{\"lng\":116.978401,\"lat\":32.152295},{\"lng\":116.978401,\"lat\":32.154816},{\"lng\":116.978672,\"lat\":32.157798},{\"lng\":116.980302,\"lat\":32.160786},{\"lng\":116.983273,\"lat\":32.161942},{\"lng\":116.985983,\"lat\":32.161718},{\"lng\":116.988964,\"lat\":32.161726},{\"lng\":116.992755,\"lat\":32.161047},{\"lng\":116.995736,\"lat\":32.160598},{\"lng\":116.998438,\"lat\":32.160377},{\"lng\":117.00168,\"lat\":32.160616},{\"lng\":117.00521,\"lat\":32.161543},{\"lng\":117.007381,\"lat\":32.162007},{\"lng\":117.010894,\"lat\":32.163851},{\"lng\":117.013064,\"lat\":32.165001},{\"lng\":117.014964,\"lat\":32.165927},{\"lng\":117.017396,\"lat\":32.16754},{\"lng\":117.019026,\"lat\":32.168922},{\"lng\":117.019837,\"lat\":32.170758},{\"lng\":117.022277,\"lat\":32.173972},{\"lng\":117.024456,\"lat\":32.177648},{\"lng\":117.024988,\"lat\":32.179712},{\"lng\":117.025267,\"lat\":32.181781},{\"lng\":117.024727,\"lat\":32.184531},{\"lng\":117.024457,\"lat\":32.186596},{\"lng\":117.023647,\"lat\":32.188657},{\"lng\":117.025311,\"lat\":32.190894},{\"lng\":117.011672,\"lat\":32.19755},{\"lng\":117.004412,\"lat\":32.202903},{\"lng\":117.003628,\"lat\":32.210625},{\"lng\":117.003079,\"lat\":32.212461},{\"lng\":117.003899,\"lat\":32.214527},{\"lng\":117.00634,\"lat\":32.217742},{\"lng\":117.008772,\"lat\":32.220045},{\"lng\":117.011222,\"lat\":32.221884},{\"lng\":117.013653,\"lat\":32.222811},{\"lng\":117.017453,\"lat\":32.222823},{\"lng\":117.019615,\"lat\":32.222597},{\"lng\":117.021785,\"lat\":32.222831},{\"lng\":117.023955,\"lat\":32.223067},{\"lng\":117.026935,\"lat\":32.223076},{\"lng\":117.029096,\"lat\":32.222847},{\"lng\":117.031806,\"lat\":32.223085},{\"lng\":117.034516,\"lat\":32.22286},{\"lng\":117.036686,\"lat\":32.223094},{\"lng\":117.040475,\"lat\":32.223561},{\"lng\":117.043184,\"lat\":32.224254},{\"lng\":117.047252,\"lat\":32.225179},{\"lng\":117.050509,\"lat\":32.227018},{\"lng\":117.052399,\"lat\":32.2284},{\"lng\":117.055926,\"lat\":32.231385},{\"lng\":117.057545,\"lat\":32.232994},{\"lng\":117.059721,\"lat\":32.234602},{\"lng\":117.061071,\"lat\":32.23667},{\"lng\":117.062429,\"lat\":32.238276},{\"lng\":117.063517,\"lat\":32.240569},{\"lng\":117.064335,\"lat\":32.242866},{\"lng\":117.064875,\"lat\":32.245619},{\"lng\":117.065694,\"lat\":32.250207},{\"lng\":117.066242,\"lat\":32.252272},{\"lng\":117.067322,\"lat\":32.255943},{\"lng\":117.069219,\"lat\":32.258697},{\"lng\":117.070855,\"lat\":32.262139},{\"lng\":117.071403,\"lat\":32.264438},{\"lng\":117.072212,\"lat\":32.266273},{\"lng\":117.071943,\"lat\":32.268108},{\"lng\":117.071143,\"lat\":32.271777},{\"lng\":117.070064,\"lat\":32.275447},{\"lng\":117.068716,\"lat\":32.277738},{\"lng\":117.067367,\"lat\":32.280032},{\"lng\":117.064661,\"lat\":32.282781},{\"lng\":117.061415,\"lat\":32.284613},{\"lng\":117.05762,\"lat\":32.284153},{\"lng\":117.055722,\"lat\":32.282773},{\"lng\":117.052735,\"lat\":32.280477},{\"lng\":117.050845,\"lat\":32.279325},{\"lng\":117.048947,\"lat\":32.277947},{\"lng\":117.046229,\"lat\":32.276335},{\"lng\":117.044069,\"lat\":32.27541},{\"lng\":117.04163,\"lat\":32.275638},{\"lng\":117.039731,\"lat\":32.278157},{\"lng\":117.038381,\"lat\":32.281137},{\"lng\":117.037571,\"lat\":32.284347},{\"lng\":117.037032,\"lat\":32.286179},{\"lng\":117.03623,\"lat\":32.289161},{\"lng\":117.03596,\"lat\":32.292372},{\"lng\":117.035691,\"lat\":32.294667},{\"lng\":117.036231,\"lat\":32.297422},{\"lng\":117.03705,\"lat\":32.299718},{\"lng\":117.038131,\"lat\":32.302705},{\"lng\":117.03922,\"lat\":32.304537},{\"lng\":117.041668,\"lat\":32.306611},{\"lng\":117.043297,\"lat\":32.308451},{\"lng\":117.044926,\"lat\":32.310284},{\"lng\":117.046015,\"lat\":32.313499},{\"lng\":117.046555,\"lat\":32.315336},{\"lng\":117.047374,\"lat\":32.318319},{\"lng\":117.047644,\"lat\":32.320156},{\"lng\":117.050875,\"lat\":32.321693},{\"lng\":117.053741,\"lat\":32.324553},{\"lng\":117.057319,\"lat\":32.328126},{\"lng\":117.059226,\"lat\":32.331224},{\"lng\":117.058269,\"lat\":32.333362},{\"lng\":117.055648,\"lat\":32.334546},{\"lng\":117.05207,\"lat\":32.335489},{\"lng\":117.049919,\"lat\":32.33477},{\"lng\":117.047297,\"lat\":32.332388},{\"lng\":117.043325,\"lat\":32.332997},{\"lng\":117.042246,\"lat\":32.335748},{\"lng\":117.040347,\"lat\":32.337807},{\"lng\":117.039275,\"lat\":32.33941},{\"lng\":117.037917,\"lat\":32.342161},{\"lng\":117.039415,\"lat\":32.343786},{\"lng\":117.042046,\"lat\":32.34522},{\"lng\":117.043719,\"lat\":32.347842},{\"lng\":117.043005,\"lat\":32.352597},{\"lng\":117.043006,\"lat\":32.357827},{\"lng\":117.043955,\"lat\":32.361636},{\"lng\":117.044905,\"lat\":32.366395},{\"lng\":117.045864,\"lat\":32.369729},{\"lng\":117.046108,\"lat\":32.373773},{\"lng\":117.045864,\"lat\":32.376626},{\"lng\":117.04563,\"lat\":32.381146},{\"lng\":117.045029,\"lat\":32.3841},{\"lng\":117.044532,\"lat\":32.384843},{\"lng\":117.043862,\"lat\":32.385154},{\"lng\":117.042294,\"lat\":32.385411},{\"lng\":117.03461,\"lat\":32.383724},{\"lng\":117.023857,\"lat\":32.382707},{\"lng\":117.017686,\"lat\":32.383105},{\"lng\":117.013093,\"lat\":32.384235},{\"lng\":117.004583,\"lat\":32.386221},{\"lng\":117.006879,\"lat\":32.389094},{\"lng\":117.007791,\"lat\":32.39314},{\"lng\":117.008268,\"lat\":32.397572},{\"lng\":117.007339,\"lat\":32.400778},{\"lng\":117.007318,\"lat\":32.401269},{\"lng\":117.007401,\"lat\":32.401771},{\"lng\":117.007722,\"lat\":32.402259},{\"lng\":117.008244,\"lat\":32.402827},{\"lng\":117.008504,\"lat\":32.403209},{\"lng\":117.009045,\"lat\":32.404363},{\"lng\":117.009218,\"lat\":32.404564},{\"lng\":117.009449,\"lat\":32.40465},{\"lng\":117.009673,\"lat\":32.40466},{\"lng\":117.010285,\"lat\":32.404592},{\"lng\":117.010487,\"lat\":32.404628},{\"lng\":117.011241,\"lat\":32.405082},{\"lng\":117.011561,\"lat\":32.405198},{\"lng\":117.012218,\"lat\":32.40524},{\"lng\":117.012586,\"lat\":32.405305},{\"lng\":117.013506,\"lat\":32.405585},{\"lng\":117.014593,\"lat\":32.405707},{\"lng\":117.015618,\"lat\":32.406042},{\"lng\":117.016331,\"lat\":32.406425},{\"lng\":117.016782,\"lat\":32.406716},{\"lng\":117.017385,\"lat\":32.407247},{\"lng\":117.018213,\"lat\":32.408234},{\"lng\":117.018971,\"lat\":32.409164},{\"lng\":117.019819,\"lat\":32.41006},{\"lng\":117.021467,\"lat\":32.410708},{\"lng\":117.022646,\"lat\":32.410969},{\"lng\":117.023269,\"lat\":32.411193},{\"lng\":117.024159,\"lat\":32.41168},{\"lng\":117.024977,\"lat\":32.412289},{\"lng\":117.026592,\"lat\":32.413773},{\"lng\":117.027227,\"lat\":32.414021},{\"lng\":117.030774,\"lat\":32.414726},{\"lng\":117.032108,\"lat\":32.414674},{\"lng\":117.033532,\"lat\":32.414372},{\"lng\":117.034599,\"lat\":32.414421},{\"lng\":117.035251,\"lat\":32.414542},{\"lng\":117.036012,\"lat\":32.414854},{\"lng\":117.037893,\"lat\":32.416013},{\"lng\":117.038315,\"lat\":32.415993},{\"lng\":117.039014,\"lat\":32.415738},{\"lng\":117.039256,\"lat\":32.41573},{\"lng\":117.039684,\"lat\":32.416005},{\"lng\":117.040283,\"lat\":32.416914},{\"lng\":117.040593,\"lat\":32.418169},{\"lng\":117.04125,\"lat\":32.418747},{\"lng\":117.041584,\"lat\":32.419299},{\"lng\":117.041643,\"lat\":32.420212},{\"lng\":117.041283,\"lat\":32.420733},{\"lng\":117.041229,\"lat\":32.421003},{\"lng\":117.041881,\"lat\":32.421401},{\"lng\":117.042249,\"lat\":32.421957},{\"lng\":117.042469,\"lat\":32.421969},{\"lng\":117.043399,\"lat\":32.421704},{\"lng\":117.043695,\"lat\":32.421826},{\"lng\":117.044319,\"lat\":32.42311},{\"lng\":117.045523,\"lat\":32.424617},{\"lng\":117.046124,\"lat\":32.425531},{\"lng\":117.046326,\"lat\":32.426373},{\"lng\":117.046533,\"lat\":32.427942},{\"lng\":117.047204,\"lat\":32.428305},{\"lng\":117.047644,\"lat\":32.429007},{\"lng\":117.048355,\"lat\":32.430593},{\"lng\":117.048405,\"lat\":32.431681},{\"lng\":117.047764,\"lat\":32.432291},{\"lng\":117.047913,\"lat\":32.432944},{\"lng\":117.04783,\"lat\":32.433836},{\"lng\":117.047895,\"lat\":32.434031},{\"lng\":117.04849,\"lat\":32.43472},{\"lng\":117.048667,\"lat\":32.435367},{\"lng\":117.04897,\"lat\":32.435919},{\"lng\":117.048999,\"lat\":32.43637},{\"lng\":117.048758,\"lat\":32.436881},{\"lng\":117.048171,\"lat\":32.437452},{\"lng\":117.047677,\"lat\":32.43885},{\"lng\":117.047768,\"lat\":32.439636},{\"lng\":117.048073,\"lat\":32.440275},{\"lng\":117.048415,\"lat\":32.440801},{\"lng\":117.048576,\"lat\":32.440871},{\"lng\":117.049365,\"lat\":32.440838},{\"lng\":117.050515,\"lat\":32.441657},{\"lng\":117.051861,\"lat\":32.44335},{\"lng\":117.052082,\"lat\":32.444642},{\"lng\":117.052416,\"lat\":32.445134},{\"lng\":117.053015,\"lat\":32.445607},{\"lng\":117.053804,\"lat\":32.4459},{\"lng\":117.055412,\"lat\":32.448559},{\"lng\":117.056307,\"lat\":32.449529},{\"lng\":117.057061,\"lat\":32.450141},{\"lng\":117.057863,\"lat\":32.450381},{\"lng\":117.05829,\"lat\":32.451161},{\"lng\":117.05924,\"lat\":32.452402},{\"lng\":117.059914,\"lat\":32.453114},{\"lng\":117.061183,\"lat\":32.454132},{\"lng\":117.061802,\"lat\":32.455222},{\"lng\":117.062266,\"lat\":32.455542},{\"lng\":117.062596,\"lat\":32.456147},{\"lng\":117.064177,\"lat\":32.457696},{\"lng\":117.065162,\"lat\":32.459152},{\"lng\":117.066456,\"lat\":32.460577},{\"lng\":117.067,\"lat\":32.461428},{\"lng\":117.068597,\"lat\":32.464744},{\"lng\":117.069523,\"lat\":32.46639},{\"lng\":117.070791,\"lat\":32.469142},{\"lng\":117.069923,\"lat\":32.469429},{\"lng\":117.069752,\"lat\":32.469992},{\"lng\":117.069256,\"lat\":32.47037},{\"lng\":117.069296,\"lat\":32.472775},{\"lng\":117.06904,\"lat\":32.473817},{\"lng\":117.069273,\"lat\":32.47469},{\"lng\":117.069041,\"lat\":32.474973},{\"lng\":117.067997,\"lat\":32.475409},{\"lng\":117.067845,\"lat\":32.475577},{\"lng\":117.067814,\"lat\":32.475881},{\"lng\":117.068206,\"lat\":32.47777},{\"lng\":117.068238,\"lat\":32.47918},{\"lng\":117.06794,\"lat\":32.481246},{\"lng\":117.068111,\"lat\":32.482787},{\"lng\":117.069483,\"lat\":32.484568},{\"lng\":117.071164,\"lat\":32.486795},{\"lng\":117.071417,\"lat\":32.489032},{\"lng\":117.073517,\"lat\":32.490105},{\"lng\":117.074674,\"lat\":32.491732},{\"lng\":117.074889,\"lat\":32.495026},{\"lng\":117.074503,\"lat\":32.498105},{\"lng\":117.075318,\"lat\":32.499817},{\"lng\":117.076646,\"lat\":32.501102},{\"lng\":117.078468,\"lat\":32.502067},{\"lng\":117.078982,\"lat\":32.506345},{\"lng\":117.079583,\"lat\":32.511564},{\"lng\":117.078812,\"lat\":32.513402},{\"lng\":117.076541,\"lat\":32.515581},{\"lng\":117.073541,\"lat\":32.516561},{\"lng\":117.074505,\"lat\":32.520947},{\"lng\":117.075492,\"lat\":32.523173},{\"lng\":117.076356,\"lat\":32.523745},{\"lng\":117.078405,\"lat\":32.525101},{\"lng\":117.082947,\"lat\":32.527408},{\"lng\":117.083443,\"lat\":32.527689},{\"lng\":117.083426,\"lat\":32.528085},{\"lng\":117.083583,\"lat\":32.528308},{\"lng\":117.083749,\"lat\":32.52844},{\"lng\":117.084335,\"lat\":32.528672},{\"lng\":117.084575,\"lat\":32.52873},{\"lng\":117.084682,\"lat\":32.52887},{\"lng\":117.08475,\"lat\":32.52917},{\"lng\":117.084613,\"lat\":32.529718},{\"lng\":117.084672,\"lat\":32.530109},{\"lng\":117.084868,\"lat\":32.530481},{\"lng\":117.08569,\"lat\":32.530638},{\"lng\":117.08665,\"lat\":32.530619},{\"lng\":117.08757,\"lat\":32.530444},{\"lng\":117.088255,\"lat\":32.530327},{\"lng\":117.088804,\"lat\":32.530425},{\"lng\":117.089391,\"lat\":32.530758},{\"lng\":117.090096,\"lat\":32.530974},{\"lng\":117.091156,\"lat\":32.530979},{\"lng\":117.091888,\"lat\":32.531188},{\"lng\":117.093384,\"lat\":32.532155},{\"lng\":117.094066,\"lat\":32.532284},{\"lng\":117.094362,\"lat\":32.532185},{\"lng\":117.094584,\"lat\":32.531997},{\"lng\":117.095219,\"lat\":32.530727},{\"lng\":117.09558,\"lat\":32.530324},{\"lng\":117.095923,\"lat\":32.530101},{\"lng\":117.098228,\"lat\":32.529672},{\"lng\":117.098873,\"lat\":32.529629},{\"lng\":117.09929,\"lat\":32.529763},{\"lng\":117.100003,\"lat\":32.530451},{\"lng\":117.100436,\"lat\":32.530467},{\"lng\":117.100859,\"lat\":32.53033},{\"lng\":117.101096,\"lat\":32.530149},{\"lng\":117.101441,\"lat\":32.529375},{\"lng\":117.101729,\"lat\":32.529084},{\"lng\":117.102067,\"lat\":32.529014},{\"lng\":117.102805,\"lat\":32.529151},{\"lng\":117.103228,\"lat\":32.528918},{\"lng\":117.103475,\"lat\":32.529028},{\"lng\":117.104584,\"lat\":32.530027},{\"lng\":117.105004,\"lat\":32.530758},{\"lng\":117.105449,\"lat\":32.530848},{\"lng\":117.10613,\"lat\":32.530678},{\"lng\":117.10675,\"lat\":32.530379},{\"lng\":117.108127,\"lat\":32.529498},{\"lng\":117.109378,\"lat\":32.528493},{\"lng\":117.110042,\"lat\":32.528242},{\"lng\":117.110675,\"lat\":32.527849},{\"lng\":117.113888,\"lat\":32.524402},{\"lng\":117.114379,\"lat\":32.523524},{\"lng\":117.114763,\"lat\":32.522407},{\"lng\":117.115242,\"lat\":32.521979},{\"lng\":117.115834,\"lat\":32.521932},{\"lng\":117.116837,\"lat\":32.522968},{\"lng\":117.117528,\"lat\":32.523411},{\"lng\":117.120105,\"lat\":32.523849},{\"lng\":117.121669,\"lat\":32.524509},{\"lng\":117.122709,\"lat\":32.5245},{\"lng\":117.124874,\"lat\":32.524375},{\"lng\":117.125493,\"lat\":32.524467},{\"lng\":117.126383,\"lat\":32.524771},{\"lng\":117.127123,\"lat\":32.524816},{\"lng\":117.127668,\"lat\":32.524594},{\"lng\":117.129039,\"lat\":32.523221},{\"lng\":117.130214,\"lat\":32.523403},{\"lng\":117.130945,\"lat\":32.523396},{\"lng\":117.132078,\"lat\":32.523241},{\"lng\":117.132259,\"lat\":32.523161},{\"lng\":117.133496,\"lat\":32.522846},{\"lng\":117.134509,\"lat\":32.522531},{\"lng\":117.135004,\"lat\":32.522283},{\"lng\":117.135366,\"lat\":32.521903},{\"lng\":117.135589,\"lat\":32.521515},{\"lng\":117.13572,\"lat\":32.521201},{\"lng\":117.136067,\"lat\":32.521011},{\"lng\":117.136652,\"lat\":32.520977},{\"lng\":117.13699,\"lat\":32.521018},{\"lng\":117.137262,\"lat\":32.521125},{\"lng\":117.137575,\"lat\":32.521125},{\"lng\":117.137838,\"lat\":32.521067},{\"lng\":117.138036,\"lat\":32.520926},{\"lng\":117.138547,\"lat\":32.520397},{\"lng\":117.139091,\"lat\":32.520232},{\"lng\":117.139429,\"lat\":32.520272},{\"lng\":117.13961,\"lat\":32.520413},{\"lng\":117.139882,\"lat\":32.5208},{\"lng\":117.140253,\"lat\":32.521162},{\"lng\":117.140722,\"lat\":32.52141},{\"lng\":117.141283,\"lat\":32.521524},{\"lng\":117.141711,\"lat\":32.521515},{\"lng\":117.142502,\"lat\":32.521226},{\"lng\":117.142791,\"lat\":32.521159},{\"lng\":117.142964,\"lat\":32.521159},{\"lng\":117.143137,\"lat\":32.521299},{\"lng\":117.143252,\"lat\":32.521563},{\"lng\":117.143491,\"lat\":32.521826},{\"lng\":117.144799,\"lat\":32.522613},{\"lng\":117.147248,\"lat\":32.524165},{\"lng\":117.147761,\"lat\":32.524666},{\"lng\":117.150751,\"lat\":32.52663},{\"lng\":117.151014,\"lat\":32.526999},{\"lng\":117.151445,\"lat\":32.528027},{\"lng\":117.151688,\"lat\":32.528247},{\"lng\":117.152339,\"lat\":32.528552},{\"lng\":117.152582,\"lat\":32.528786},{\"lng\":117.154143,\"lat\":32.531359},{\"lng\":117.154253,\"lat\":32.531474},{\"lng\":117.155297,\"lat\":32.533398},{\"lng\":117.155335,\"lat\":32.533613},{\"lng\":117.155281,\"lat\":32.534163},{\"lng\":117.155535,\"lat\":32.534598},{\"lng\":117.15672,\"lat\":32.535122},{\"lng\":117.157794,\"lat\":32.535848},{\"lng\":117.158929,\"lat\":32.536019},{\"lng\":117.160372,\"lat\":32.535774},{\"lng\":117.160647,\"lat\":32.53576},{\"lng\":117.163175,\"lat\":32.535105},{\"lng\":117.16468,\"lat\":32.534541},{\"lng\":117.165602,\"lat\":32.534319},{\"lng\":117.166623,\"lat\":32.534262},{\"lng\":117.167095,\"lat\":32.534306},{\"lng\":117.167447,\"lat\":32.534558},{\"lng\":117.168091,\"lat\":32.535178},{\"lng\":117.168461,\"lat\":32.535593},{\"lng\":117.169449,\"lat\":32.535921},{\"lng\":117.173302,\"lat\":32.536038},{\"lng\":117.175515,\"lat\":32.536485},{\"lng\":117.179244,\"lat\":32.536642},{\"lng\":117.179572,\"lat\":32.534137},{\"lng\":117.181088,\"lat\":32.533436},{\"lng\":117.183998,\"lat\":32.533348},{\"lng\":117.185514,\"lat\":32.534044},{\"lng\":117.201096,\"lat\":32.53405}]', null, null, '长丰县', null, '1');
INSERT INTO `fence` VALUES ('6', '340122', null, null, null, null, '[{\"lng\":117.833223,\"lat\":32.221691},{\"lng\":117.838054,\"lat\":32.219814},{\"lng\":117.840209,\"lat\":32.219794},{\"lng\":117.84369,\"lat\":32.218846},{\"lng\":117.847179,\"lat\":32.217436},{\"lng\":117.849577,\"lat\":32.215121},{\"lng\":117.851447,\"lat\":32.213496},{\"lng\":117.853569,\"lat\":32.211184},{\"lng\":117.856236,\"lat\":32.208178},{\"lng\":117.857015,\"lat\":32.206335},{\"lng\":117.858071,\"lat\":32.203575},{\"lng\":117.859128,\"lat\":32.201955},{\"lng\":117.860998,\"lat\":32.200331},{\"lng\":117.86286,\"lat\":32.197792},{\"lng\":117.863908,\"lat\":32.19549},{\"lng\":117.864678,\"lat\":32.192503},{\"lng\":117.865726,\"lat\":32.189512},{\"lng\":117.86596,\"lat\":32.186296},{\"lng\":117.866748,\"lat\":32.183767},{\"lng\":117.86699,\"lat\":32.181703},{\"lng\":117.867509,\"lat\":32.179402},{\"lng\":117.867475,\"lat\":32.176419},{\"lng\":117.86744,\"lat\":32.173437},{\"lng\":117.867422,\"lat\":32.171602},{\"lng\":117.868461,\"lat\":32.16838},{\"lng\":117.868713,\"lat\":32.166542},{\"lng\":117.869223,\"lat\":32.164016},{\"lng\":117.870263,\"lat\":32.160567},{\"lng\":117.870782,\"lat\":32.158728},{\"lng\":117.871284,\"lat\":32.155742},{\"lng\":117.870972,\"lat\":32.151843},{\"lng\":117.87202,\"lat\":32.148852},{\"lng\":117.873596,\"lat\":32.14517},{\"lng\":117.873302,\"lat\":32.142877},{\"lng\":117.872738,\"lat\":32.141049},{\"lng\":117.869481,\"lat\":32.137636},{\"lng\":117.865938,\"lat\":32.134226},{\"lng\":117.863495,\"lat\":32.131957},{\"lng\":117.861329,\"lat\":32.129908},{\"lng\":117.859692,\"lat\":32.128316},{\"lng\":117.857241,\"lat\":32.125129},{\"lng\":117.855336,\"lat\":32.123314},{\"lng\":117.853145,\"lat\":32.118971},{\"lng\":117.852304,\"lat\":32.11646},{\"lng\":117.853083,\"lat\":32.113469},{\"lng\":117.853863,\"lat\":32.1114},{\"lng\":117.855187,\"lat\":32.109551},{\"lng\":117.857058,\"lat\":32.1077},{\"lng\":117.856468,\"lat\":32.103116},{\"lng\":117.855914,\"lat\":32.101286},{\"lng\":117.856139,\"lat\":32.097846},{\"lng\":117.857186,\"lat\":32.094625},{\"lng\":117.85878,\"lat\":32.093234},{\"lng\":117.862521,\"lat\":32.090676},{\"lng\":117.864651,\"lat\":32.088824},{\"lng\":117.866496,\"lat\":32.085823},{\"lng\":117.867016,\"lat\":32.083527},{\"lng\":117.867249,\"lat\":32.080769},{\"lng\":117.867769,\"lat\":32.078242},{\"lng\":117.86828,\"lat\":32.075946},{\"lng\":117.869873,\"lat\":32.073637},{\"lng\":117.871986,\"lat\":32.070863},{\"lng\":117.874914,\"lat\":32.068317},{\"lng\":117.877332,\"lat\":32.067379},{\"lng\":117.879741,\"lat\":32.066667},{\"lng\":117.882956,\"lat\":32.065496},{\"lng\":117.885097,\"lat\":32.064103},{\"lng\":117.882652,\"lat\":32.062058},{\"lng\":117.880745,\"lat\":32.060239},{\"lng\":117.878856,\"lat\":32.059109},{\"lng\":117.876404,\"lat\":32.056605},{\"lng\":117.875043,\"lat\":32.055015},{\"lng\":117.871794,\"lat\":32.052749},{\"lng\":117.869637,\"lat\":32.051619},{\"lng\":117.867731,\"lat\":32.050032},{\"lng\":117.864205,\"lat\":32.04708},{\"lng\":117.861512,\"lat\":32.046418},{\"lng\":117.857467,\"lat\":32.045077},{\"lng\":117.855042,\"lat\":32.044411},{\"lng\":117.850738,\"lat\":32.043763},{\"lng\":117.845881,\"lat\":32.042433},{\"lng\":117.842391,\"lat\":32.041776},{\"lng\":117.839958,\"lat\":32.040192},{\"lng\":117.837257,\"lat\":32.038841},{\"lng\":117.834538,\"lat\":32.03611},{\"lng\":117.833438,\"lat\":32.033828},{\"lng\":117.833429,\"lat\":32.031994},{\"lng\":117.833403,\"lat\":32.029931},{\"lng\":117.833645,\"lat\":32.027405},{\"lng\":117.834684,\"lat\":32.024643},{\"lng\":117.83548,\"lat\":32.022802},{\"lng\":117.835723,\"lat\":32.020964},{\"lng\":117.8349,\"lat\":32.019134},{\"lng\":117.834077,\"lat\":32.017307},{\"lng\":117.832986,\"lat\":32.015252},{\"lng\":117.830553,\"lat\":32.014356},{\"lng\":117.828397,\"lat\":32.01369},{\"lng\":117.825704,\"lat\":32.012567},{\"lng\":117.823271,\"lat\":32.011213},{\"lng\":117.821652,\"lat\":32.009854},{\"lng\":117.818942,\"lat\":32.00804},{\"lng\":117.814889,\"lat\":32.005095},{\"lng\":117.812724,\"lat\":32.003738},{\"lng\":117.811104,\"lat\":32.002378},{\"lng\":117.810931,\"lat\":32.00226},{\"lng\":117.804582,\"lat\":31.997919},{\"lng\":117.795867,\"lat\":31.992384},{\"lng\":117.788788,\"lat\":31.988152},{\"lng\":117.784125,\"lat\":31.984336},{\"lng\":117.780562,\"lat\":31.981421},{\"lng\":117.778629,\"lat\":31.979158},{\"lng\":117.775343,\"lat\":31.976924},{\"lng\":117.771016,\"lat\":31.975618},{\"lng\":117.766957,\"lat\":31.974997},{\"lng\":117.761856,\"lat\":31.975307},{\"lng\":117.759462,\"lat\":31.976492},{\"lng\":117.75652,\"lat\":31.977683},{\"lng\":117.751912,\"lat\":31.976609},{\"lng\":117.750002,\"lat\":31.975036},{\"lng\":117.745887,\"lat\":31.971891},{\"lng\":117.742614,\"lat\":31.969878},{\"lng\":117.739322,\"lat\":31.967405},{\"lng\":117.738922,\"lat\":31.961228},{\"lng\":117.738566,\"lat\":31.957568},{\"lng\":117.737141,\"lat\":31.953696},{\"lng\":117.735204,\"lat\":31.951889},{\"lng\":117.732172,\"lat\":31.948268},{\"lng\":117.728323,\"lat\":31.944888},{\"lng\":117.72416,\"lat\":31.939449},{\"lng\":117.72244,\"lat\":31.934893},{\"lng\":117.719067,\"lat\":31.928753},{\"lng\":117.716815,\"lat\":31.924205},{\"lng\":117.713442,\"lat\":31.918066},{\"lng\":117.71172,\"lat\":31.91305},{\"lng\":117.709738,\"lat\":31.908723},{\"lng\":117.708625,\"lat\":31.906907},{\"lng\":117.702625,\"lat\":31.903782},{\"lng\":117.697164,\"lat\":31.900876},{\"lng\":117.692493,\"lat\":31.896582},{\"lng\":117.689431,\"lat\":31.892042},{\"lng\":117.687161,\"lat\":31.886803},{\"lng\":117.685133,\"lat\":31.880186},{\"lng\":117.68368,\"lat\":31.875624},{\"lng\":117.681714,\"lat\":31.871754},{\"lng\":117.680044,\"lat\":31.869028},{\"lng\":117.678347,\"lat\":31.865384},{\"lng\":117.676408,\"lat\":31.863117},{\"lng\":117.672789,\"lat\":31.857894},{\"lng\":117.667865,\"lat\":31.854522},{\"lng\":117.662394,\"lat\":31.85093},{\"lng\":117.658532,\"lat\":31.846855},{\"lng\":117.655235,\"lat\":31.843462},{\"lng\":117.651609,\"lat\":31.837782},{\"lng\":117.646921,\"lat\":31.832801},{\"lng\":117.643599,\"lat\":31.828496},{\"lng\":117.640565,\"lat\":31.824868},{\"lng\":117.637783,\"lat\":31.820783},{\"lng\":117.635522,\"lat\":31.815773},{\"lng\":117.634053,\"lat\":31.809606},{\"lng\":117.63732,\"lat\":31.798566},{\"lng\":117.638041,\"lat\":31.794202},{\"lng\":117.636346,\"lat\":31.790329},{\"lng\":117.633842,\"lat\":31.786923},{\"lng\":117.627333,\"lat\":31.784035},{\"lng\":117.622988,\"lat\":31.78272},{\"lng\":117.619392,\"lat\":31.777499},{\"lng\":117.618262,\"lat\":31.774994},{\"lng\":117.612451,\"lat\":31.766828},{\"lng\":117.606729,\"lat\":31.763702},{\"lng\":117.599976,\"lat\":31.761509},{\"lng\":117.593181,\"lat\":31.758399},{\"lng\":117.588289,\"lat\":31.755266},{\"lng\":117.582556,\"lat\":31.750768},{\"lng\":117.577389,\"lat\":31.747412},{\"lng\":117.572474,\"lat\":31.743135},{\"lng\":117.570784,\"lat\":31.739034},{\"lng\":117.570974,\"lat\":31.735367},{\"lng\":117.57145,\"lat\":31.73215},{\"lng\":117.573253,\"lat\":31.728457},{\"lng\":117.574275,\"lat\":31.725921},{\"lng\":117.572065,\"lat\":31.722747},{\"lng\":117.569335,\"lat\":31.720499},{\"lng\":117.568719,\"lat\":31.716383},{\"lng\":117.571033,\"lat\":31.711535},{\"lng\":117.572046,\"lat\":31.708541},{\"lng\":117.570902,\"lat\":31.704663},{\"lng\":117.568198,\"lat\":31.703788},{\"lng\":117.565253,\"lat\":31.703836},{\"lng\":117.562074,\"lat\":31.705718},{\"lng\":117.559449,\"lat\":31.708512},{\"lng\":117.557613,\"lat\":31.7106},{\"lng\":117.554972,\"lat\":31.712478},{\"lng\":117.551241,\"lat\":31.713686},{\"lng\":117.54853,\"lat\":31.712354},{\"lng\":117.547647,\"lat\":31.708474},{\"lng\":117.54943,\"lat\":31.70363},{\"lng\":117.552036,\"lat\":31.699463},{\"lng\":117.552763,\"lat\":31.695787},{\"lng\":117.551914,\"lat\":31.693279},{\"lng\":117.54968,\"lat\":31.689193},{\"lng\":117.54858,\"lat\":31.687375},{\"lng\":117.545316,\"lat\":31.685139},{\"lng\":117.543654,\"lat\":31.682417},{\"lng\":117.543333,\"lat\":31.679901},{\"lng\":117.541905,\"lat\":31.674881},{\"lng\":117.540243,\"lat\":31.672389},{\"lng\":117.536694,\"lat\":31.668783},{\"lng\":117.534513,\"lat\":31.666756},{\"lng\":117.531242,\"lat\":31.664291},{\"lng\":117.520028,\"lat\":31.651643},{\"lng\":117.514283,\"lat\":31.645553},{\"lng\":117.505493,\"lat\":31.633783},{\"lng\":117.496703,\"lat\":31.621785},{\"lng\":117.491762,\"lat\":31.61522},{\"lng\":117.487393,\"lat\":31.610482},{\"lng\":117.481941,\"lat\":31.60507},{\"lng\":117.47648,\"lat\":31.599199},{\"lng\":117.472896,\"lat\":31.594215},{\"lng\":117.469321,\"lat\":31.588773},{\"lng\":117.469,\"lat\":31.586028},{\"lng\":117.464351,\"lat\":31.580828},{\"lng\":117.459753,\"lat\":31.577924},{\"lng\":117.45492,\"lat\":31.577084},{\"lng\":117.451438,\"lat\":31.577364},{\"lng\":117.448224,\"lat\":31.577183},{\"lng\":117.444992,\"lat\":31.575858},{\"lng\":117.442539,\"lat\":31.574061},{\"lng\":117.440355,\"lat\":31.572028},{\"lng\":117.437183,\"lat\":31.572046},{\"lng\":117.436705,\"lat\":31.56857},{\"lng\":117.432853,\"lat\":31.565878},{\"lng\":117.428758,\"lat\":31.559753},{\"lng\":117.427577,\"lat\":31.560209},{\"lng\":117.425435,\"lat\":31.561589},{\"lng\":117.42369,\"lat\":31.563373},{\"lng\":117.421951,\"lat\":31.565661},{\"lng\":117.420205,\"lat\":31.569095},{\"lng\":117.417856,\"lat\":31.576265},{\"lng\":117.417383,\"lat\":31.578838},{\"lng\":117.416576,\"lat\":31.584225},{\"lng\":117.416241,\"lat\":31.586914},{\"lng\":117.415836,\"lat\":31.592245},{\"lng\":117.412604,\"lat\":31.615444},{\"lng\":117.410851,\"lat\":31.630971},{\"lng\":117.41061,\"lat\":31.636922},{\"lng\":117.40996,\"lat\":31.65297},{\"lng\":117.408946,\"lat\":31.659953},{\"lng\":117.409015,\"lat\":31.664138},{\"lng\":117.409214,\"lat\":31.666888},{\"lng\":117.409138,\"lat\":31.675302},{\"lng\":117.408795,\"lat\":31.678856},{\"lng\":117.408994,\"lat\":31.687675},{\"lng\":117.408987,\"lat\":31.691111},{\"lng\":117.408652,\"lat\":31.693862},{\"lng\":117.40936,\"lat\":31.695869},{\"lng\":117.410107,\"lat\":31.696181},{\"lng\":117.411406,\"lat\":31.698239},{\"lng\":117.412633,\"lat\":31.700202},{\"lng\":117.413083,\"lat\":31.701755},{\"lng\":117.412401,\"lat\":31.704314},{\"lng\":117.411022,\"lat\":31.707247},{\"lng\":117.410404,\"lat\":31.709149},{\"lng\":117.409262,\"lat\":31.712574},{\"lng\":117.407441,\"lat\":31.714608},{\"lng\":117.404219,\"lat\":31.716188},{\"lng\":117.401412,\"lat\":31.717709},{\"lng\":117.400413,\"lat\":31.718898},{\"lng\":117.399985,\"lat\":31.720419},{\"lng\":117.400127,\"lat\":31.721323},{\"lng\":117.400603,\"lat\":31.72237},{\"lng\":117.401365,\"lat\":31.723464},{\"lng\":117.402793,\"lat\":31.725224},{\"lng\":117.404221,\"lat\":31.727935},{\"lng\":117.405101,\"lat\":31.730146},{\"lng\":117.405744,\"lat\":31.732215},{\"lng\":117.406458,\"lat\":31.734284},{\"lng\":117.407457,\"lat\":31.737138},{\"lng\":117.408278,\"lat\":31.739456},{\"lng\":117.409241,\"lat\":31.740812},{\"lng\":117.411025,\"lat\":31.74288},{\"lng\":117.412488,\"lat\":31.745091},{\"lng\":117.413594,\"lat\":31.746732},{\"lng\":117.414307,\"lat\":31.747909},{\"lng\":117.414878,\"lat\":31.749478},{\"lng\":117.415484,\"lat\":31.751154},{\"lng\":117.416412,\"lat\":31.753044},{\"lng\":117.416947,\"lat\":31.753829},{\"lng\":117.418053,\"lat\":31.754649},{\"lng\":117.419337,\"lat\":31.75529},{\"lng\":117.421405,\"lat\":31.755967},{\"lng\":117.425362,\"lat\":31.757533},{\"lng\":117.427929,\"lat\":31.758708},{\"lng\":117.429568,\"lat\":31.759777},{\"lng\":117.430424,\"lat\":31.760561},{\"lng\":117.431243,\"lat\":31.761666},{\"lng\":117.431885,\"lat\":31.763341},{\"lng\":117.432099,\"lat\":31.764875},{\"lng\":117.432135,\"lat\":31.766159},{\"lng\":117.432206,\"lat\":31.768121},{\"lng\":117.432135,\"lat\":31.769405},{\"lng\":117.432064,\"lat\":31.770475},{\"lng\":117.431743,\"lat\":31.77126},{\"lng\":117.431138,\"lat\":31.771938},{\"lng\":117.430211,\"lat\":31.77251},{\"lng\":117.429285,\"lat\":31.772832},{\"lng\":117.428714,\"lat\":31.773153},{\"lng\":117.428287,\"lat\":31.773475},{\"lng\":117.427788,\"lat\":31.774046},{\"lng\":117.427645,\"lat\":31.774617},{\"lng\":117.427574,\"lat\":31.775259},{\"lng\":117.427645,\"lat\":31.776614},{\"lng\":117.427574,\"lat\":31.778148},{\"lng\":117.427147,\"lat\":31.779396},{\"lng\":117.426861,\"lat\":31.780039},{\"lng\":117.426256,\"lat\":31.781038},{\"lng\":117.425222,\"lat\":31.782572},{\"lng\":117.424331,\"lat\":31.783928},{\"lng\":117.423547,\"lat\":31.784749},{\"lng\":117.421729,\"lat\":31.785571},{\"lng\":117.41991,\"lat\":31.786035},{\"lng\":117.418805,\"lat\":31.785965},{\"lng\":117.417771,\"lat\":31.785929},{\"lng\":117.416844,\"lat\":31.786001},{\"lng\":117.415702,\"lat\":31.786251},{\"lng\":117.414882,\"lat\":31.786501},{\"lng\":117.41399,\"lat\":31.786894},{\"lng\":117.412956,\"lat\":31.787821},{\"lng\":117.41229,\"lat\":31.788654},{\"lng\":117.411957,\"lat\":31.78951},{\"lng\":117.411491,\"lat\":31.790719},{\"lng\":117.410629,\"lat\":31.792144},{\"lng\":117.409585,\"lat\":31.793348},{\"lng\":117.408562,\"lat\":31.794311},{\"lng\":117.407137,\"lat\":31.795133},{\"lng\":117.405892,\"lat\":31.795655},{\"lng\":117.404467,\"lat\":31.795956},{\"lng\":117.403423,\"lat\":31.796036},{\"lng\":117.40256,\"lat\":31.796176},{\"lng\":117.401155,\"lat\":31.796657},{\"lng\":117.398886,\"lat\":31.797579},{\"lng\":117.397702,\"lat\":31.798101},{\"lng\":117.396858,\"lat\":31.798622},{\"lng\":117.395974,\"lat\":31.799444},{\"lng\":117.395071,\"lat\":31.800306},{\"lng\":117.393765,\"lat\":31.801148},{\"lng\":117.39238,\"lat\":31.801829},{\"lng\":117.391094,\"lat\":31.802209},{\"lng\":117.39027,\"lat\":31.80239},{\"lng\":117.389527,\"lat\":31.802429},{\"lng\":117.388241,\"lat\":31.802328},{\"lng\":117.386795,\"lat\":31.802166},{\"lng\":117.385549,\"lat\":31.802004},{\"lng\":117.384705,\"lat\":31.801963},{\"lng\":117.383982,\"lat\":31.801943},{\"lng\":117.383218,\"lat\":31.802042},{\"lng\":117.382395,\"lat\":31.802202},{\"lng\":117.381892,\"lat\":31.802402},{\"lng\":117.38141,\"lat\":31.802783},{\"lng\":117.380908,\"lat\":31.803284},{\"lng\":117.380546,\"lat\":31.803965},{\"lng\":117.380225,\"lat\":31.804888},{\"lng\":117.380024,\"lat\":31.806212},{\"lng\":117.380004,\"lat\":31.806553},{\"lng\":117.379883,\"lat\":31.807014},{\"lng\":117.379742,\"lat\":31.807797},{\"lng\":117.380265,\"lat\":31.810236},{\"lng\":117.380766,\"lat\":31.811806},{\"lng\":117.381052,\"lat\":31.813304},{\"lng\":117.380766,\"lat\":31.814695},{\"lng\":117.380552,\"lat\":31.815051},{\"lng\":117.379955,\"lat\":31.816259},{\"lng\":117.379705,\"lat\":31.818399},{\"lng\":117.380027,\"lat\":31.821324},{\"lng\":117.381328,\"lat\":31.824781},{\"lng\":117.382734,\"lat\":31.826726},{\"lng\":117.384278,\"lat\":31.828616},{\"lng\":117.386571,\"lat\":31.830622},{\"lng\":117.388183,\"lat\":31.832287},{\"lng\":117.388985,\"lat\":31.832916},{\"lng\":117.389993,\"lat\":31.83332},{\"lng\":117.392948,\"lat\":31.83343},{\"lng\":117.398057,\"lat\":31.832867},{\"lng\":117.399339,\"lat\":31.83281},{\"lng\":117.400683,\"lat\":31.833149},{\"lng\":117.403233,\"lat\":31.83481},{\"lng\":117.403836,\"lat\":31.835728},{\"lng\":117.404241,\"lat\":31.836989},{\"lng\":117.403768,\"lat\":31.841111},{\"lng\":117.403227,\"lat\":31.842483},{\"lng\":117.402486,\"lat\":31.843865},{\"lng\":117.401815,\"lat\":31.844606},{\"lng\":117.400738,\"lat\":31.845123},{\"lng\":117.396837,\"lat\":31.846035},{\"lng\":117.391797,\"lat\":31.847526},{\"lng\":117.388703,\"lat\":31.847975},{\"lng\":117.38769,\"lat\":31.849131},{\"lng\":117.387662,\"lat\":31.849636},{\"lng\":117.388507,\"lat\":31.852533},{\"lng\":117.38874,\"lat\":31.853885},{\"lng\":117.388254,\"lat\":31.85562},{\"lng\":117.388559,\"lat\":31.856864},{\"lng\":117.38913,\"lat\":31.857858},{\"lng\":117.39028,\"lat\":31.858605},{\"lng\":117.392345,\"lat\":31.859641},{\"lng\":117.393805,\"lat\":31.859626},{\"lng\":117.397561,\"lat\":31.859954},{\"lng\":117.399658,\"lat\":31.86053},{\"lng\":117.40462,\"lat\":31.860512},{\"lng\":117.407715,\"lat\":31.861943},{\"lng\":117.409517,\"lat\":31.863607},{\"lng\":117.412633,\"lat\":31.867262},{\"lng\":117.413862,\"lat\":31.868557},{\"lng\":117.414239,\"lat\":31.869234},{\"lng\":117.41433,\"lat\":31.869738},{\"lng\":117.41432,\"lat\":31.870839},{\"lng\":117.414199,\"lat\":31.871723},{\"lng\":117.41351,\"lat\":31.872766},{\"lng\":117.412248,\"lat\":31.873447},{\"lng\":117.410924,\"lat\":31.873815},{\"lng\":117.40892,\"lat\":31.874163},{\"lng\":117.407614,\"lat\":31.874212},{\"lng\":117.406137,\"lat\":31.87491},{\"lng\":117.405297,\"lat\":31.87622},{\"lng\":117.40493,\"lat\":31.877682},{\"lng\":117.404462,\"lat\":31.878854},{\"lng\":117.40513,\"lat\":31.880253},{\"lng\":117.406438,\"lat\":31.880667},{\"lng\":117.407987,\"lat\":31.881594},{\"lng\":117.408204,\"lat\":31.881852},{\"lng\":117.408557,\"lat\":31.882542},{\"lng\":117.408698,\"lat\":31.882666},{\"lng\":117.409468,\"lat\":31.886755},{\"lng\":117.409142,\"lat\":31.889265},{\"lng\":117.409158,\"lat\":31.89293},{\"lng\":117.40884,\"lat\":31.898606},{\"lng\":117.408505,\"lat\":31.902104},{\"lng\":117.409375,\"lat\":31.908832},{\"lng\":117.41044,\"lat\":31.912313},{\"lng\":117.411443,\"lat\":31.914287},{\"lng\":117.415179,\"lat\":31.916052},{\"lng\":117.420841,\"lat\":31.917267},{\"lng\":117.425924,\"lat\":31.918471},{\"lng\":117.42886,\"lat\":31.921096},{\"lng\":117.427018,\"lat\":31.928308},{\"lng\":117.423963,\"lat\":31.936183},{\"lng\":117.423539,\"lat\":31.940046},{\"lng\":117.419485,\"lat\":31.946654},{\"lng\":117.415326,\"lat\":31.955144},{\"lng\":117.412966,\"lat\":31.958401},{\"lng\":117.408338,\"lat\":31.95981},{\"lng\":117.408257,\"lat\":31.959721},{\"lng\":117.404078,\"lat\":31.960172},{\"lng\":117.40099,\"lat\":31.961781},{\"lng\":117.397479,\"lat\":31.969121},{\"lng\":117.397515,\"lat\":31.969769},{\"lng\":117.397141,\"lat\":31.972703},{\"lng\":117.397059,\"lat\":31.97401},{\"lng\":117.397172,\"lat\":31.97412},{\"lng\":117.397281,\"lat\":31.975522},{\"lng\":117.396568,\"lat\":31.976822},{\"lng\":117.395095,\"lat\":31.978193},{\"lng\":117.393348,\"lat\":31.978606},{\"lng\":117.393022,\"lat\":31.978548},{\"lng\":117.385712,\"lat\":31.978655},{\"lng\":117.385197,\"lat\":31.978406},{\"lng\":117.383294,\"lat\":31.977798},{\"lng\":117.38267,\"lat\":31.976959},{\"lng\":117.382233,\"lat\":31.976126},{\"lng\":117.381903,\"lat\":31.977626},{\"lng\":117.380097,\"lat\":31.981374},{\"lng\":117.380435,\"lat\":31.983625},{\"lng\":117.383026,\"lat\":31.9923},{\"lng\":117.386391,\"lat\":31.99813},{\"lng\":117.385087,\"lat\":32.001199},{\"lng\":117.383479,\"lat\":32.002582},{\"lng\":117.380524,\"lat\":32.005109},{\"lng\":117.378646,\"lat\":32.006949},{\"lng\":117.37516,\"lat\":32.010624},{\"lng\":117.373829,\"lat\":32.01338},{\"lng\":117.373838,\"lat\":32.015675},{\"lng\":117.374125,\"lat\":32.018883},{\"lng\":117.374673,\"lat\":32.021634},{\"lng\":117.3747,\"lat\":32.025305},{\"lng\":117.374709,\"lat\":32.027369},{\"lng\":117.375257,\"lat\":32.029433},{\"lng\":117.376883,\"lat\":32.032409},{\"lng\":117.377979,\"lat\":32.034018},{\"lng\":117.380952,\"lat\":32.035157},{\"lng\":117.382839,\"lat\":32.03607},{\"lng\":117.388228,\"lat\":32.036285},{\"lng\":117.39067,\"lat\":32.037886},{\"lng\":117.391218,\"lat\":32.040177},{\"lng\":117.390688,\"lat\":32.042931},{\"lng\":117.388281,\"lat\":32.045233},{\"lng\":117.386134,\"lat\":32.047073},{\"lng\":117.383718,\"lat\":32.049828},{\"lng\":117.381571,\"lat\":32.051438},{\"lng\":117.378885,\"lat\":32.053277},{\"lng\":117.376998,\"lat\":32.054889},{\"lng\":117.374842,\"lat\":32.055813},{\"lng\":117.371877,\"lat\":32.056508},{\"lng\":117.369181,\"lat\":32.056283},{\"lng\":117.366754,\"lat\":32.056054},{\"lng\":117.364318,\"lat\":32.055371},{\"lng\":117.361352,\"lat\":32.055375},{\"lng\":117.358655,\"lat\":32.054923},{\"lng\":117.355949,\"lat\":32.054465},{\"lng\":117.350815,\"lat\":32.052866},{\"lng\":117.347839,\"lat\":32.052182},{\"lng\":117.345681,\"lat\":32.052186},{\"lng\":117.340817,\"lat\":32.05242},{\"lng\":117.338659,\"lat\":32.052882},{\"lng\":117.336779,\"lat\":32.054486},{\"lng\":117.335439,\"lat\":32.056098},{\"lng\":117.334099,\"lat\":32.057706},{\"lng\":117.33248,\"lat\":32.059082},{\"lng\":117.33087,\"lat\":32.060917},{\"lng\":117.328991,\"lat\":32.063439},{\"lng\":117.32819,\"lat\":32.065279},{\"lng\":117.326851,\"lat\":32.068488},{\"lng\":117.32578,\"lat\":32.070786},{\"lng\":117.326338,\"lat\":32.073766},{\"lng\":117.328505,\"lat\":32.076749},{\"lng\":117.330141,\"lat\":32.078579},{\"lng\":117.333657,\"lat\":32.079722},{\"lng\":117.335824,\"lat\":32.08018},{\"lng\":117.33961,\"lat\":32.081782},{\"lng\":117.342856,\"lat\":32.084301},{\"lng\":117.346651,\"lat\":32.086592},{\"lng\":117.348017,\"lat\":32.089112},{\"lng\":117.348026,\"lat\":32.092095},{\"lng\":117.346956,\"lat\":32.095078},{\"lng\":117.345355,\"lat\":32.097143},{\"lng\":117.342658,\"lat\":32.098982},{\"lng\":117.340499,\"lat\":32.099213},{\"lng\":117.338063,\"lat\":32.099444},{\"lng\":117.334555,\"lat\":32.098763},{\"lng\":117.332119,\"lat\":32.098533},{\"lng\":117.329952,\"lat\":32.098535},{\"lng\":117.327802,\"lat\":32.098768},{\"lng\":117.325104,\"lat\":32.100145},{\"lng\":117.322407,\"lat\":32.101294},{\"lng\":117.321337,\"lat\":32.104049},{\"lng\":117.321624,\"lat\":32.107719},{\"lng\":117.322982,\"lat\":32.109553},{\"lng\":117.323809,\"lat\":32.111845},{\"lng\":117.325976,\"lat\":32.114824},{\"lng\":117.327073,\"lat\":32.117805},{\"lng\":117.32736,\"lat\":32.120559},{\"lng\":117.32683,\"lat\":32.123999},{\"lng\":117.327109,\"lat\":32.126068},{\"lng\":117.330085,\"lat\":32.126752},{\"lng\":117.333601,\"lat\":32.127434},{\"lng\":117.337926,\"lat\":32.127431},{\"lng\":117.340633,\"lat\":32.127886},{\"lng\":117.3436,\"lat\":32.128113},{\"lng\":117.347386,\"lat\":32.129026},{\"lng\":117.350362,\"lat\":32.129483},{\"lng\":117.352528,\"lat\":32.130398},{\"lng\":117.354965,\"lat\":32.130852},{\"lng\":117.356861,\"lat\":32.132224},{\"lng\":117.35768,\"lat\":32.134061},{\"lng\":117.357428,\"lat\":32.1375},{\"lng\":117.356088,\"lat\":32.140255},{\"lng\":117.353939,\"lat\":32.142551},{\"lng\":117.35179,\"lat\":32.145078},{\"lng\":117.352339,\"lat\":32.146912},{\"lng\":117.354236,\"lat\":32.147827},{\"lng\":117.356132,\"lat\":32.149433},{\"lng\":117.359108,\"lat\":32.150573},{\"lng\":117.361822,\"lat\":32.151947},{\"lng\":117.365067,\"lat\":32.152861},{\"lng\":117.367772,\"lat\":32.153544},{\"lng\":117.370756,\"lat\":32.154913},{\"lng\":117.373182,\"lat\":32.156286},{\"lng\":117.376165,\"lat\":32.157888},{\"lng\":117.37833,\"lat\":32.15903},{\"lng\":117.380226,\"lat\":32.160401},{\"lng\":117.382677,\"lat\":32.162461},{\"lng\":117.384303,\"lat\":32.164064},{\"lng\":117.386198,\"lat\":32.16612},{\"lng\":117.387033,\"lat\":32.169562},{\"lng\":117.385138,\"lat\":32.171171},{\"lng\":117.382174,\"lat\":32.171636},{\"lng\":117.379479,\"lat\":32.171644},{\"lng\":117.377314,\"lat\":32.171646},{\"lng\":117.374879,\"lat\":32.171422},{\"lng\":117.372453,\"lat\":32.171427},{\"lng\":117.370296,\"lat\":32.171431},{\"lng\":117.369218,\"lat\":32.173039},{\"lng\":117.36734,\"lat\":32.175337},{\"lng\":117.366,\"lat\":32.177405},{\"lng\":117.364652,\"lat\":32.179243},{\"lng\":117.364131,\"lat\":32.181537},{\"lng\":117.361973,\"lat\":32.183604},{\"lng\":117.358189,\"lat\":32.184986},{\"lng\":117.355492,\"lat\":32.185448},{\"lng\":117.351437,\"lat\":32.186142},{\"lng\":117.34847,\"lat\":32.187983},{\"lng\":117.346591,\"lat\":32.190503},{\"lng\":117.345799,\"lat\":32.193032},{\"lng\":117.344721,\"lat\":32.194868},{\"lng\":117.34392,\"lat\":32.19762},{\"lng\":117.343389,\"lat\":32.199459},{\"lng\":117.342058,\"lat\":32.203818},{\"lng\":117.341806,\"lat\":32.207944},{\"lng\":117.341546,\"lat\":32.210011},{\"lng\":117.341555,\"lat\":32.212533},{\"lng\":117.341833,\"lat\":32.215059},{\"lng\":117.341581,\"lat\":32.217122},{\"lng\":117.341581,\"lat\":32.219188},{\"lng\":117.341877,\"lat\":32.222168},{\"lng\":117.342974,\"lat\":32.224691},{\"lng\":117.343244,\"lat\":32.226985},{\"lng\":117.34488,\"lat\":32.229047},{\"lng\":117.346787,\"lat\":32.23203},{\"lng\":117.348423,\"lat\":32.233862},{\"lng\":117.34978,\"lat\":32.235696},{\"lng\":117.351956,\"lat\":32.237989},{\"lng\":117.354401,\"lat\":32.239131},{\"lng\":117.356028,\"lat\":32.240507},{\"lng\":117.358743,\"lat\":32.242109},{\"lng\":117.362806,\"lat\":32.244168},{\"lng\":117.364972,\"lat\":32.243935},{\"lng\":117.367677,\"lat\":32.244618},{\"lng\":117.369843,\"lat\":32.244617},{\"lng\":117.373626,\"lat\":32.245297},{\"lng\":117.377956,\"lat\":32.246207},{\"lng\":117.380669,\"lat\":32.246885},{\"lng\":117.383642,\"lat\":32.247338},{\"lng\":117.385537,\"lat\":32.248255},{\"lng\":117.389874,\"lat\":32.249621},{\"lng\":117.392029,\"lat\":32.250302},{\"lng\":117.393932,\"lat\":32.251442},{\"lng\":117.395826,\"lat\":32.252355},{\"lng\":117.397998,\"lat\":32.253725},{\"lng\":117.399623,\"lat\":32.255099},{\"lng\":117.400978,\"lat\":32.256931},{\"lng\":117.402889,\"lat\":32.259677},{\"lng\":117.404253,\"lat\":32.261966},{\"lng\":117.405347,\"lat\":32.265632},{\"lng\":117.405035,\"lat\":32.269459},{\"lng\":117.408265,\"lat\":32.267613},{\"lng\":117.411781,\"lat\":32.26783},{\"lng\":117.414741,\"lat\":32.267126},{\"lng\":117.418515,\"lat\":32.265508},{\"lng\":117.420398,\"lat\":32.264355},{\"lng\":117.423894,\"lat\":32.261813},{\"lng\":117.425231,\"lat\":32.259515},{\"lng\":117.42549,\"lat\":32.257219},{\"lng\":117.425742,\"lat\":32.254923},{\"lng\":117.425724,\"lat\":32.252174},{\"lng\":117.425169,\"lat\":32.249191},{\"lng\":117.425593,\"lat\":32.248213},{\"lng\":117.425887,\"lat\":32.24815},{\"lng\":117.425689,\"lat\":32.247992},{\"lng\":117.425967,\"lat\":32.247352},{\"lng\":117.426227,\"lat\":32.244826},{\"lng\":117.427285,\"lat\":32.242529},{\"lng\":117.429973,\"lat\":32.240222},{\"lng\":117.432392,\"lat\":32.238608},{\"lng\":117.435349,\"lat\":32.236758},{\"lng\":117.438573,\"lat\":32.236051},{\"lng\":117.442075,\"lat\":32.235345},{\"lng\":117.445307,\"lat\":32.234867},{\"lng\":117.449076,\"lat\":32.233929},{\"lng\":117.451484,\"lat\":32.232994},{\"lng\":117.454438,\"lat\":32.230684},{\"lng\":117.456863,\"lat\":32.229982},{\"lng\":117.460344,\"lat\":32.227896},{\"lng\":117.463037,\"lat\":32.226501},{\"lng\":117.465175,\"lat\":32.22534},{\"lng\":117.468663,\"lat\":32.223483},{\"lng\":117.470265,\"lat\":32.222096},{\"lng\":117.471606,\"lat\":32.220481},{\"lng\":117.473207,\"lat\":32.218867},{\"lng\":117.475345,\"lat\":32.217472},{\"lng\":117.477232,\"lat\":32.216545},{\"lng\":117.478832,\"lat\":32.215157},{\"lng\":117.482319,\"lat\":32.21238},{\"lng\":117.48527,\"lat\":32.210751},{\"lng\":117.487675,\"lat\":32.20936},{\"lng\":117.490893,\"lat\":32.20773},{\"lng\":117.49277,\"lat\":32.206568},{\"lng\":117.495988,\"lat\":32.204942},{\"lng\":117.498125,\"lat\":32.203547},{\"lng\":117.500815,\"lat\":32.20307},{\"lng\":117.503765,\"lat\":32.20305},{\"lng\":117.506196,\"lat\":32.203945},{\"lng\":117.50835,\"lat\":32.204618},{\"lng\":117.512131,\"lat\":32.206195},{\"lng\":117.515902,\"lat\":32.207316},{\"lng\":117.518861,\"lat\":32.20775},{\"lng\":117.521006,\"lat\":32.208193},{\"lng\":117.523438,\"lat\":32.208635},{\"lng\":117.526933,\"lat\":32.209298},{\"lng\":117.530169,\"lat\":32.210649},{\"lng\":117.532323,\"lat\":32.210863},{\"lng\":117.535292,\"lat\":32.211299},{\"lng\":117.537706,\"lat\":32.211968},{\"lng\":117.540138,\"lat\":32.212181},{\"lng\":117.543107,\"lat\":32.213534},{\"lng\":117.546335,\"lat\":32.213743},{\"lng\":117.549842,\"lat\":32.214636},{\"lng\":117.553885,\"lat\":32.215981},{\"lng\":117.556319,\"lat\":32.217803},{\"lng\":117.558216,\"lat\":32.218706},{\"lng\":117.561455,\"lat\":32.220749},{\"lng\":117.563352,\"lat\":32.221882},{\"lng\":117.566332,\"lat\":32.224616},{\"lng\":117.568499,\"lat\":32.225749},{\"lng\":117.570388,\"lat\":32.226883},{\"lng\":117.5731,\"lat\":32.228932},{\"lng\":117.576082,\"lat\":32.230747},{\"lng\":117.579324,\"lat\":32.232334},{\"lng\":117.581761,\"lat\":32.233468},{\"lng\":117.585819,\"lat\":32.235505},{\"lng\":117.588525,\"lat\":32.236638},{\"lng\":117.591491,\"lat\":32.237076},{\"lng\":117.593938,\"lat\":32.239132},{\"lng\":117.596133,\"lat\":32.240017},{\"lng\":117.597634,\"lat\":32.240018},{\"lng\":117.605437,\"lat\":32.238924},{\"lng\":117.612254,\"lat\":32.248},{\"lng\":117.612268,\"lat\":32.248015},{\"lng\":117.612285,\"lat\":32.248041},{\"lng\":117.613903,\"lat\":32.250195},{\"lng\":117.622563,\"lat\":32.250005},{\"lng\":117.631983,\"lat\":32.2569},{\"lng\":117.63173,\"lat\":32.248886},{\"lng\":117.644753,\"lat\":32.258228},{\"lng\":117.652422,\"lat\":32.260815},{\"lng\":117.662154,\"lat\":32.260379},{\"lng\":117.672201,\"lat\":32.261079},{\"lng\":117.672522,\"lat\":32.254199},{\"lng\":117.673226,\"lat\":32.250974},{\"lng\":117.674983,\"lat\":32.250962},{\"lng\":117.676992,\"lat\":32.25092},{\"lng\":117.680506,\"lat\":32.250217},{\"lng\":117.684021,\"lat\":32.250434},{\"lng\":117.687004,\"lat\":32.250652},{\"lng\":117.6897,\"lat\":32.25041},{\"lng\":117.692675,\"lat\":32.249938},{\"lng\":117.69511,\"lat\":32.249242},{\"lng\":117.697258,\"lat\":32.248773},{\"lng\":117.700223,\"lat\":32.247385},{\"lng\":117.703188,\"lat\":32.245764},{\"lng\":117.707492,\"lat\":32.243912},{\"lng\":117.708561,\"lat\":32.241841},{\"lng\":117.71043,\"lat\":32.23885},{\"lng\":117.712021,\"lat\":32.236549},{\"lng\":117.714733,\"lat\":32.236538},{\"lng\":117.717176,\"lat\":32.237902},{\"lng\":117.719888,\"lat\":32.238806},{\"lng\":117.722339,\"lat\":32.241315},{\"lng\":117.725598,\"lat\":32.243137},{\"lng\":117.727501,\"lat\":32.244272},{\"lng\":117.729134,\"lat\":32.245641},{\"lng\":117.731576,\"lat\":32.246314},{\"lng\":117.734546,\"lat\":32.247217},{\"lng\":117.737256,\"lat\":32.247204},{\"lng\":117.741303,\"lat\":32.247178},{\"lng\":117.74561,\"lat\":32.245548},{\"lng\":117.74857,\"lat\":32.244612},{\"lng\":117.750723,\"lat\":32.243681},{\"lng\":117.753682,\"lat\":32.242284},{\"lng\":117.75744,\"lat\":32.240657},{\"lng\":117.7596,\"lat\":32.240412},{\"lng\":117.762828,\"lat\":32.240389},{\"lng\":117.76661,\"lat\":32.239906},{\"lng\":117.770911,\"lat\":32.239188},{\"lng\":117.774943,\"lat\":32.237777},{\"lng\":117.776538,\"lat\":32.235474},{\"lng\":117.778411,\"lat\":32.234316},{\"lng\":117.781627,\"lat\":32.231993},{\"lng\":117.78349,\"lat\":32.229685},{\"lng\":117.786159,\"lat\":32.226456},{\"lng\":117.787217,\"lat\":32.22484},{\"lng\":117.789088,\"lat\":32.223449},{\"lng\":117.790145,\"lat\":32.221606},{\"lng\":117.791471,\"lat\":32.219757},{\"lng\":117.794417,\"lat\":32.218131},{\"lng\":117.796574,\"lat\":32.217883},{\"lng\":117.799545,\"lat\":32.218317},{\"lng\":117.803053,\"lat\":32.219205},{\"lng\":117.805219,\"lat\":32.220105},{\"lng\":117.807376,\"lat\":32.22123},{\"lng\":117.809281,\"lat\":32.222821},{\"lng\":117.811178,\"lat\":32.223951},{\"lng\":117.814157,\"lat\":32.226447},{\"lng\":117.816608,\"lat\":32.228034},{\"lng\":117.819864,\"lat\":32.230528},{\"lng\":117.822279,\"lat\":32.230508},{\"lng\":117.824686,\"lat\":32.228878},{\"lng\":117.826825,\"lat\":32.227023},{\"lng\":117.829223,\"lat\":32.224708},{\"lng\":117.831361,\"lat\":32.223315},{\"lng\":117.833223,\"lat\":32.221691}]', null, null, '肥东县', null, '1');
INSERT INTO `fence` VALUES ('7', '340123', null, null, null, null, '[{\"lng\":116.771067,\"lat\":31.91127},{\"lng\":116.775432,\"lat\":31.916501},{\"lng\":116.780031,\"lat\":31.918519},{\"lng\":116.784628,\"lat\":31.920767},{\"lng\":116.790032,\"lat\":31.922548},{\"lng\":116.792989,\"lat\":31.922291},{\"lng\":116.797289,\"lat\":31.922248},{\"lng\":116.800783,\"lat\":31.921983},{\"lng\":116.805343,\"lat\":31.921251},{\"lng\":116.81018,\"lat\":31.921204},{\"lng\":116.81369,\"lat\":31.922543},{\"lng\":116.816403,\"lat\":31.924346},{\"lng\":116.820754,\"lat\":31.928196},{\"lng\":116.825364,\"lat\":31.931125},{\"lng\":116.828086,\"lat\":31.934073},{\"lng\":116.831604,\"lat\":31.935867},{\"lng\":116.83488,\"lat\":31.939727},{\"lng\":116.836527,\"lat\":31.94223},{\"lng\":116.838979,\"lat\":31.944722},{\"lng\":116.841432,\"lat\":31.948133},{\"lng\":116.843885,\"lat\":31.95017},{\"lng\":116.847143,\"lat\":31.952882},{\"lng\":116.851208,\"lat\":31.955589},{\"lng\":116.855811,\"lat\":31.958059},{\"lng\":116.859339,\"lat\":31.960542},{\"lng\":116.860449,\"lat\":31.963278},{\"lng\":116.862105,\"lat\":31.966239},{\"lng\":116.865374,\"lat\":31.969411},{\"lng\":116.872406,\"lat\":31.972317},{\"lng\":116.879162,\"lat\":31.974307},{\"lng\":116.891022,\"lat\":31.975108},{\"lng\":116.896959,\"lat\":31.976424},{\"lng\":116.904513,\"lat\":31.977268},{\"lng\":116.912895,\"lat\":31.978796},{\"lng\":116.921012,\"lat\":31.980555},{\"lng\":116.924819,\"lat\":31.982814},{\"lng\":116.926984,\"lat\":31.98394},{\"lng\":116.931062,\"lat\":31.986196},{\"lng\":116.934602,\"lat\":31.988001},{\"lng\":116.938952,\"lat\":31.990255},{\"lng\":116.944364,\"lat\":31.991129},{\"lng\":116.950047,\"lat\":31.991772},{\"lng\":116.954922,\"lat\":31.992422},{\"lng\":116.961949,\"lat\":31.9926},{\"lng\":116.967358,\"lat\":31.993246},{\"lng\":116.971966,\"lat\":31.9939},{\"lng\":116.977106,\"lat\":31.994096},{\"lng\":116.98331,\"lat\":31.992674},{\"lng\":116.988173,\"lat\":31.992413},{\"lng\":116.992783,\"lat\":31.993296},{\"lng\":116.997934,\"lat\":31.99372},{\"lng\":117.002266,\"lat\":31.994377},{\"lng\":117.006264,\"lat\":31.997099},{\"lng\":117.007813,\"lat\":31.998108},{\"lng\":117.020753,\"lat\":32.00103},{\"lng\":117.022915,\"lat\":32.002642},{\"lng\":117.024806,\"lat\":32.003793},{\"lng\":117.026706,\"lat\":32.005632},{\"lng\":117.029948,\"lat\":32.007019},{\"lng\":117.032509,\"lat\":32.006336},{\"lng\":117.03521,\"lat\":32.00428},{\"lng\":117.038991,\"lat\":32.00268},{\"lng\":117.041691,\"lat\":32.001081},{\"lng\":117.044461,\"lat\":31.998059},{\"lng\":117.046473,\"lat\":31.995202},{\"lng\":117.046686,\"lat\":31.995066},{\"lng\":117.047671,\"lat\":31.994871},{\"lng\":117.054106,\"lat\":31.994744},{\"lng\":117.05768,\"lat\":31.993244},{\"lng\":117.06158,\"lat\":31.990362},{\"lng\":117.064133,\"lat\":31.988215},{\"lng\":117.065739,\"lat\":31.987769},{\"lng\":117.068534,\"lat\":31.987473},{\"lng\":117.070909,\"lat\":31.987867},{\"lng\":117.071918,\"lat\":31.987868},{\"lng\":117.073271,\"lat\":31.987301},{\"lng\":117.073745,\"lat\":31.986787},{\"lng\":117.073952,\"lat\":31.985985},{\"lng\":117.073898,\"lat\":31.983235},{\"lng\":117.073431,\"lat\":31.981404},{\"lng\":117.072705,\"lat\":31.978943},{\"lng\":117.07077,\"lat\":31.974983},{\"lng\":117.070365,\"lat\":31.973666},{\"lng\":117.068628,\"lat\":31.970103},{\"lng\":117.067297,\"lat\":31.965918},{\"lng\":117.067175,\"lat\":31.964116},{\"lng\":117.067312,\"lat\":31.963168},{\"lng\":117.067383,\"lat\":31.962893},{\"lng\":117.067794,\"lat\":31.961284},{\"lng\":117.067947,\"lat\":31.959336},{\"lng\":117.068428,\"lat\":31.956308},{\"lng\":117.06891,\"lat\":31.954649},{\"lng\":117.071165,\"lat\":31.947952},{\"lng\":117.071983,\"lat\":31.94624},{\"lng\":117.073061,\"lat\":31.944988},{\"lng\":117.074483,\"lat\":31.94379},{\"lng\":117.076983,\"lat\":31.942078},{\"lng\":117.078198,\"lat\":31.941971},{\"lng\":117.079077,\"lat\":31.942035},{\"lng\":117.080086,\"lat\":31.941972},{\"lng\":117.081302,\"lat\":31.941522},{\"lng\":117.083059,\"lat\":31.940386},{\"lng\":117.0838,\"lat\":31.939295},{\"lng\":117.085764,\"lat\":31.937303},{\"lng\":117.087796,\"lat\":31.934959},{\"lng\":117.09144,\"lat\":31.931479},{\"lng\":117.092333,\"lat\":31.930481},{\"lng\":117.092876,\"lat\":31.930358},{\"lng\":117.093423,\"lat\":31.930655},{\"lng\":117.093979,\"lat\":31.930525},{\"lng\":117.095034,\"lat\":31.930415},{\"lng\":117.095553,\"lat\":31.930341},{\"lng\":117.095924,\"lat\":31.930063},{\"lng\":117.096072,\"lat\":31.929657},{\"lng\":117.095683,\"lat\":31.928935},{\"lng\":117.095442,\"lat\":31.92825},{\"lng\":117.095405,\"lat\":31.927436},{\"lng\":117.095442,\"lat\":31.926936},{\"lng\":117.095849,\"lat\":31.926566},{\"lng\":117.096331,\"lat\":31.926493},{\"lng\":117.096942,\"lat\":31.926585},{\"lng\":117.097016,\"lat\":31.926123},{\"lng\":117.096619,\"lat\":31.925369},{\"lng\":117.096549,\"lat\":31.924772},{\"lng\":117.096771,\"lat\":31.924342},{\"lng\":117.097202,\"lat\":31.923787},{\"lng\":117.097119,\"lat\":31.923495},{\"lng\":117.096463,\"lat\":31.923093},{\"lng\":117.096241,\"lat\":31.922852},{\"lng\":117.096297,\"lat\":31.922538},{\"lng\":117.096982,\"lat\":31.922094},{\"lng\":117.097072,\"lat\":31.920035},{\"lng\":117.097072,\"lat\":31.916885},{\"lng\":117.095859,\"lat\":31.915551},{\"lng\":117.091734,\"lat\":31.913248},{\"lng\":117.089671,\"lat\":31.912641},{\"lng\":117.088579,\"lat\":31.911428},{\"lng\":117.088821,\"lat\":31.909126},{\"lng\":117.088659,\"lat\":31.906461},{\"lng\":117.086394,\"lat\":31.905005},{\"lng\":117.084613,\"lat\":31.903872},{\"lng\":117.084613,\"lat\":31.901449},{\"lng\":117.083965,\"lat\":31.898379},{\"lng\":117.081538,\"lat\":31.896761},{\"lng\":117.075871,\"lat\":31.893362},{\"lng\":117.07085,\"lat\":31.889639},{\"lng\":117.067935,\"lat\":31.885435},{\"lng\":117.06797,\"lat\":31.881378},{\"lng\":117.065054,\"lat\":31.878303},{\"lng\":117.062138,\"lat\":31.875875},{\"lng\":117.060031,\"lat\":31.874256},{\"lng\":117.060355,\"lat\":31.872317},{\"lng\":117.064568,\"lat\":31.871032},{\"lng\":117.067645,\"lat\":31.868614},{\"lng\":117.068941,\"lat\":31.865709},{\"lng\":117.070398,\"lat\":31.861672},{\"lng\":117.07137,\"lat\":31.858442},{\"lng\":117.072665,\"lat\":31.855374},{\"lng\":117.07477,\"lat\":31.852469},{\"lng\":117.076227,\"lat\":31.850371},{\"lng\":117.076226,\"lat\":31.847786},{\"lng\":117.072664,\"lat\":31.845681},{\"lng\":117.069587,\"lat\":31.843899},{\"lng\":117.068129,\"lat\":31.841797},{\"lng\":117.066509,\"lat\":31.837755},{\"lng\":117.065374,\"lat\":31.83226},{\"lng\":117.064564,\"lat\":31.829028},{\"lng\":117.061161,\"lat\":31.826759},{\"lng\":117.055165,\"lat\":31.825617},{\"lng\":117.050789,\"lat\":31.824477},{\"lng\":117.047709,\"lat\":31.822369},{\"lng\":117.04398,\"lat\":31.822522},{\"lng\":117.041385,\"lat\":31.822354},{\"lng\":117.040574,\"lat\":31.82009},{\"lng\":117.040249,\"lat\":31.811204},{\"lng\":117.042357,\"lat\":31.80717},{\"lng\":117.043816,\"lat\":31.804103},{\"lng\":117.044302,\"lat\":31.800712},{\"lng\":117.042356,\"lat\":31.798445},{\"lng\":117.039113,\"lat\":31.797468},{\"lng\":117.034896,\"lat\":31.795841},{\"lng\":117.034734,\"lat\":31.79374},{\"lng\":117.037328,\"lat\":31.790839},{\"lng\":117.043652,\"lat\":31.786008},{\"lng\":117.047264,\"lat\":31.785239},{\"lng\":117.047304,\"lat\":31.785567},{\"lng\":117.047529,\"lat\":31.785553},{\"lng\":117.048244,\"lat\":31.785111},{\"lng\":117.048486,\"lat\":31.785046},{\"lng\":117.048771,\"lat\":31.785192},{\"lng\":117.049224,\"lat\":31.785754},{\"lng\":117.049589,\"lat\":31.785856},{\"lng\":117.050001,\"lat\":31.785759},{\"lng\":117.050738,\"lat\":31.785318},{\"lng\":117.051185,\"lat\":31.785171},{\"lng\":117.052642,\"lat\":31.785519},{\"lng\":117.053081,\"lat\":31.785453},{\"lng\":117.053692,\"lat\":31.785133},{\"lng\":117.054007,\"lat\":31.785087},{\"lng\":117.054558,\"lat\":31.785202},{\"lng\":117.055344,\"lat\":31.785855},{\"lng\":117.055892,\"lat\":31.785929},{\"lng\":117.056172,\"lat\":31.785746},{\"lng\":117.056479,\"lat\":31.785206},{\"lng\":117.057244,\"lat\":31.785381},{\"lng\":117.057795,\"lat\":31.785244},{\"lng\":117.058483,\"lat\":31.784096},{\"lng\":117.058481,\"lat\":31.78388},{\"lng\":117.058282,\"lat\":31.783446},{\"lng\":117.058313,\"lat\":31.783253},{\"lng\":117.059603,\"lat\":31.782722},{\"lng\":117.060034,\"lat\":31.782585},{\"lng\":117.060796,\"lat\":31.78283},{\"lng\":117.06114,\"lat\":31.782621},{\"lng\":117.061171,\"lat\":31.782437},{\"lng\":117.061068,\"lat\":31.782252},{\"lng\":117.060088,\"lat\":31.781582},{\"lng\":117.059913,\"lat\":31.781228},{\"lng\":117.060153,\"lat\":31.780548},{\"lng\":117.061105,\"lat\":31.780506},{\"lng\":117.06108,\"lat\":31.779648},{\"lng\":117.061145,\"lat\":31.779336},{\"lng\":117.061335,\"lat\":31.779065},{\"lng\":117.062187,\"lat\":31.778689},{\"lng\":117.062908,\"lat\":31.77791},{\"lng\":117.063174,\"lat\":31.777828},{\"lng\":117.063525,\"lat\":31.778184},{\"lng\":117.064314,\"lat\":31.778432},{\"lng\":117.064787,\"lat\":31.778708},{\"lng\":117.065472,\"lat\":31.778462},{\"lng\":117.066386,\"lat\":31.778811},{\"lng\":117.067233,\"lat\":31.778701},{\"lng\":117.067941,\"lat\":31.779039},{\"lng\":117.069109,\"lat\":31.778929},{\"lng\":117.070047,\"lat\":31.779153},{\"lng\":117.071093,\"lat\":31.779231},{\"lng\":117.071993,\"lat\":31.77947},{\"lng\":117.072703,\"lat\":31.77936},{\"lng\":117.072904,\"lat\":31.778959},{\"lng\":117.072827,\"lat\":31.778069},{\"lng\":117.074174,\"lat\":31.778468},{\"lng\":117.074514,\"lat\":31.778461},{\"lng\":117.074685,\"lat\":31.777871},{\"lng\":117.074824,\"lat\":31.777674},{\"lng\":117.07615,\"lat\":31.777172},{\"lng\":117.076981,\"lat\":31.776107},{\"lng\":117.07735,\"lat\":31.775967},{\"lng\":117.078086,\"lat\":31.775941},{\"lng\":117.078372,\"lat\":31.776098},{\"lng\":117.078547,\"lat\":31.776889},{\"lng\":117.078936,\"lat\":31.777209},{\"lng\":117.079279,\"lat\":31.777259},{\"lng\":117.079841,\"lat\":31.777104},{\"lng\":117.081147,\"lat\":31.777034},{\"lng\":117.08219,\"lat\":31.777446},{\"lng\":117.083309,\"lat\":31.777594},{\"lng\":117.083745,\"lat\":31.778017},{\"lng\":117.084099,\"lat\":31.778951},{\"lng\":117.084316,\"lat\":31.779285},{\"lng\":117.085305,\"lat\":31.779852},{\"lng\":117.08644,\"lat\":31.780663},{\"lng\":117.086796,\"lat\":31.780805},{\"lng\":117.087312,\"lat\":31.780815},{\"lng\":117.088138,\"lat\":31.780174},{\"lng\":117.08834,\"lat\":31.78014},{\"lng\":117.088744,\"lat\":31.780423},{\"lng\":117.089038,\"lat\":31.781053},{\"lng\":117.089958,\"lat\":31.781306},{\"lng\":117.090106,\"lat\":31.781909},{\"lng\":117.090346,\"lat\":31.782149},{\"lng\":117.090786,\"lat\":31.782103},{\"lng\":117.090933,\"lat\":31.782164},{\"lng\":117.09116,\"lat\":31.783025},{\"lng\":117.091935,\"lat\":31.782853},{\"lng\":117.091923,\"lat\":31.783583},{\"lng\":117.092093,\"lat\":31.783743},{\"lng\":117.092398,\"lat\":31.783636},{\"lng\":117.093101,\"lat\":31.78304},{\"lng\":117.093337,\"lat\":31.78291},{\"lng\":117.093537,\"lat\":31.783014},{\"lng\":117.098874,\"lat\":31.784793},{\"lng\":117.103079,\"lat\":31.785117},{\"lng\":117.10518,\"lat\":31.784309},{\"lng\":117.106474,\"lat\":31.78237},{\"lng\":117.106312,\"lat\":31.779785},{\"lng\":117.106311,\"lat\":31.777523},{\"lng\":117.107206,\"lat\":31.77671},{\"lng\":117.107237,\"lat\":31.776689},{\"lng\":117.107293,\"lat\":31.776624},{\"lng\":117.107333,\"lat\":31.776595},{\"lng\":117.108089,\"lat\":31.775907},{\"lng\":117.111483,\"lat\":31.774937},{\"lng\":117.114392,\"lat\":31.776552},{\"lng\":117.114665,\"lat\":31.779186},{\"lng\":117.114708,\"lat\":31.779348},{\"lng\":117.114687,\"lat\":31.7794},{\"lng\":117.114877,\"lat\":31.781237},{\"lng\":117.114816,\"lat\":31.782259},{\"lng\":117.114817,\"lat\":31.782336},{\"lng\":117.1148,\"lat\":31.782416},{\"lng\":117.114802,\"lat\":31.782478},{\"lng\":117.114555,\"lat\":31.786569},{\"lng\":117.117464,\"lat\":31.793191},{\"lng\":117.122795,\"lat\":31.797873},{\"lng\":117.130225,\"lat\":31.804167},{\"lng\":117.140558,\"lat\":31.812718},{\"lng\":117.146369,\"lat\":31.816102},{\"lng\":117.149758,\"lat\":31.81852},{\"lng\":117.152514,\"lat\":31.819519},{\"lng\":117.153308,\"lat\":31.819807},{\"lng\":117.15718,\"lat\":31.820447},{\"lng\":117.160084,\"lat\":31.819472},{\"lng\":117.161187,\"lat\":31.81825},{\"lng\":117.161859,\"lat\":31.816238},{\"lng\":117.161858,\"lat\":31.812683},{\"lng\":117.162462,\"lat\":31.811346},{\"lng\":117.163955,\"lat\":31.810579},{\"lng\":117.165177,\"lat\":31.810784},{\"lng\":117.168186,\"lat\":31.813128},{\"lng\":117.169253,\"lat\":31.813756},{\"lng\":117.172604,\"lat\":31.814557},{\"lng\":117.177159,\"lat\":31.814786},{\"lng\":117.179238,\"lat\":31.815248},{\"lng\":117.18118,\"lat\":31.815819},{\"lng\":117.18252,\"lat\":31.816329},{\"lng\":117.183861,\"lat\":31.816964},{\"lng\":117.185057,\"lat\":31.818169},{\"lng\":117.18687,\"lat\":31.819308},{\"lng\":117.187656,\"lat\":31.819311},{\"lng\":117.187698,\"lat\":31.819303},{\"lng\":117.187781,\"lat\":31.819329},{\"lng\":117.187855,\"lat\":31.819312},{\"lng\":117.188073,\"lat\":31.819313},{\"lng\":117.189147,\"lat\":31.819084},{\"lng\":117.189954,\"lat\":31.818793},{\"lng\":117.190693,\"lat\":31.817934},{\"lng\":117.194463,\"lat\":31.811979},{\"lng\":117.195948,\"lat\":31.808539},{\"lng\":117.19642,\"lat\":31.807221},{\"lng\":117.197433,\"lat\":31.805559},{\"lng\":117.198543,\"lat\":31.804688},{\"lng\":117.198627,\"lat\":31.804622},{\"lng\":117.20093,\"lat\":31.802815},{\"lng\":117.202271,\"lat\":31.801612},{\"lng\":117.203078,\"lat\":31.800753},{\"lng\":117.203421,\"lat\":31.799715},{\"lng\":117.20342,\"lat\":31.79857},{\"lng\":117.203218,\"lat\":31.798256},{\"lng\":117.202278,\"lat\":31.794958},{\"lng\":117.202403,\"lat\":31.790979},{\"lng\":117.201066,\"lat\":31.787687},{\"lng\":117.199918,\"lat\":31.785462},{\"lng\":117.197457,\"lat\":31.784617},{\"lng\":117.194161,\"lat\":31.784514},{\"lng\":117.190361,\"lat\":31.784765},{\"lng\":117.185618,\"lat\":31.785895},{\"lng\":117.181926,\"lat\":31.786896},{\"lng\":117.178207,\"lat\":31.788147},{\"lng\":117.176001,\"lat\":31.78679},{\"lng\":117.175104,\"lat\":31.784758},{\"lng\":117.176321,\"lat\":31.781776},{\"lng\":117.176809,\"lat\":31.779637},{\"lng\":117.177456,\"lat\":31.77399},{\"lng\":117.177046,\"lat\":31.771558},{\"lng\":117.175161,\"lat\":31.76887},{\"lng\":117.173726,\"lat\":31.766233},{\"lng\":117.173834,\"lat\":31.763922},{\"lng\":117.173829,\"lat\":31.761069},{\"lng\":117.173934,\"lat\":31.759398},{\"lng\":117.174653,\"lat\":31.757693},{\"lng\":117.175052,\"lat\":31.757287},{\"lng\":117.175098,\"lat\":31.757239},{\"lng\":117.17542,\"lat\":31.756911},{\"lng\":117.176165,\"lat\":31.756398},{\"lng\":117.177452,\"lat\":31.755987},{\"lng\":117.178962,\"lat\":31.755761},{\"lng\":117.180455,\"lat\":31.755154},{\"lng\":117.182035,\"lat\":31.75462},{\"lng\":117.182324,\"lat\":31.754637},{\"lng\":117.18869,\"lat\":31.744646},{\"lng\":117.197688,\"lat\":31.732655},{\"lng\":117.206361,\"lat\":31.723256},{\"lng\":117.214467,\"lat\":31.718376},{\"lng\":117.21532,\"lat\":31.717977},{\"lng\":117.216956,\"lat\":31.717537},{\"lng\":117.219349,\"lat\":31.716941},{\"lng\":117.221968,\"lat\":31.71679},{\"lng\":117.223269,\"lat\":31.716989},{\"lng\":117.224569,\"lat\":31.717218},{\"lng\":117.225583,\"lat\":31.717636},{\"lng\":117.226788,\"lat\":31.718451},{\"lng\":117.227576,\"lat\":31.710562},{\"lng\":117.22629,\"lat\":31.707134},{\"lng\":117.221579,\"lat\":31.705853},{\"lng\":117.218367,\"lat\":31.703928},{\"lng\":117.217934,\"lat\":31.701343},{\"lng\":117.217903,\"lat\":31.699643},{\"lng\":117.218774,\"lat\":31.697428},{\"lng\":117.220382,\"lat\":31.693803},{\"lng\":117.222527,\"lat\":31.690312},{\"lng\":117.224202,\"lat\":31.687828},{\"lng\":117.22494,\"lat\":31.685412},{\"lng\":117.225408,\"lat\":31.68246},{\"lng\":117.226883,\"lat\":31.679506},{\"lng\":117.230637,\"lat\":31.676327},{\"lng\":117.232285,\"lat\":31.674767},{\"lng\":117.232566,\"lat\":31.674457},{\"lng\":117.233328,\"lat\":31.673955},{\"lng\":117.234852,\"lat\":31.673412},{\"lng\":117.236136,\"lat\":31.67315},{\"lng\":117.237319,\"lat\":31.67313},{\"lng\":117.238483,\"lat\":31.672948},{\"lng\":117.239465,\"lat\":31.672647},{\"lng\":117.240047,\"lat\":31.672004},{\"lng\":117.240468,\"lat\":31.671161},{\"lng\":117.240549,\"lat\":31.67064},{\"lng\":117.240207,\"lat\":31.670219},{\"lng\":117.240267,\"lat\":31.669717},{\"lng\":117.240569,\"lat\":31.669275},{\"lng\":117.24123,\"lat\":31.668553},{\"lng\":117.241953,\"lat\":31.66779},{\"lng\":117.242775,\"lat\":31.667468},{\"lng\":117.243517,\"lat\":31.667368},{\"lng\":117.2444,\"lat\":31.667387},{\"lng\":117.245404,\"lat\":31.667627},{\"lng\":117.246026,\"lat\":31.667768},{\"lng\":117.246648,\"lat\":31.667687},{\"lng\":117.247491,\"lat\":31.667426},{\"lng\":117.248714,\"lat\":31.666764},{\"lng\":117.249316,\"lat\":31.666102},{\"lng\":117.249738,\"lat\":31.665038},{\"lng\":117.249698,\"lat\":31.664496},{\"lng\":117.249497,\"lat\":31.663794},{\"lng\":117.249356,\"lat\":31.663333},{\"lng\":117.249356,\"lat\":31.662831},{\"lng\":117.250159,\"lat\":31.660885},{\"lng\":117.251142,\"lat\":31.658797},{\"lng\":117.251584,\"lat\":31.658015},{\"lng\":117.251844,\"lat\":31.657433},{\"lng\":117.251965,\"lat\":31.65667},{\"lng\":117.252025,\"lat\":31.655828},{\"lng\":117.251985,\"lat\":31.655065},{\"lng\":117.251985,\"lat\":31.654383},{\"lng\":117.252065,\"lat\":31.653741},{\"lng\":117.252326,\"lat\":31.652878},{\"lng\":117.252607,\"lat\":31.652256},{\"lng\":117.253008,\"lat\":31.651714},{\"lng\":117.254092,\"lat\":31.650892},{\"lng\":117.255076,\"lat\":31.65057},{\"lng\":117.256119,\"lat\":31.65039},{\"lng\":117.256943,\"lat\":31.65019},{\"lng\":117.258107,\"lat\":31.649708},{\"lng\":117.259191,\"lat\":31.649227},{\"lng\":117.260115,\"lat\":31.648725},{\"lng\":117.261038,\"lat\":31.648023},{\"lng\":117.261942,\"lat\":31.647321},{\"lng\":117.262885,\"lat\":31.646579},{\"lng\":117.263769,\"lat\":31.646137},{\"lng\":117.264572,\"lat\":31.645877},{\"lng\":117.265375,\"lat\":31.645757},{\"lng\":117.266179,\"lat\":31.645817},{\"lng\":117.267665,\"lat\":31.646079},{\"lng\":117.268749,\"lat\":31.64628},{\"lng\":117.269714,\"lat\":31.646261},{\"lng\":117.270818,\"lat\":31.646121},{\"lng\":117.272606,\"lat\":31.64564},{\"lng\":117.274655,\"lat\":31.64512},{\"lng\":117.275499,\"lat\":31.645},{\"lng\":117.276102,\"lat\":31.645001},{\"lng\":117.276664,\"lat\":31.645142},{\"lng\":117.277428,\"lat\":31.645423},{\"lng\":117.278031,\"lat\":31.645745},{\"lng\":117.278453,\"lat\":31.646126},{\"lng\":117.278795,\"lat\":31.646849},{\"lng\":117.278956,\"lat\":31.647652},{\"lng\":117.278996,\"lat\":31.65002},{\"lng\":117.279016,\"lat\":31.650983},{\"lng\":117.278996,\"lat\":31.652829},{\"lng\":117.278958,\"lat\":31.655116},{\"lng\":117.279101,\"lat\":31.656364},{\"lng\":117.279566,\"lat\":31.657257},{\"lng\":117.280495,\"lat\":31.658542},{\"lng\":117.282888,\"lat\":31.659614},{\"lng\":117.284068,\"lat\":31.660186},{\"lng\":117.284782,\"lat\":31.660151},{\"lng\":117.28589,\"lat\":31.660473},{\"lng\":117.289749,\"lat\":31.662547},{\"lng\":117.293609,\"lat\":31.663729},{\"lng\":117.294712,\"lat\":31.66372},{\"lng\":117.296064,\"lat\":31.662882},{\"lng\":117.296801,\"lat\":31.661994},{\"lng\":117.296648,\"lat\":31.660583},{\"lng\":117.296067,\"lat\":31.658479},{\"lng\":117.296286,\"lat\":31.657696},{\"lng\":117.297269,\"lat\":31.657023},{\"lng\":117.299282,\"lat\":31.656411},{\"lng\":117.41061,\"lat\":31.636922},{\"lng\":117.410851,\"lat\":31.630971},{\"lng\":117.412604,\"lat\":31.615444},{\"lng\":117.415836,\"lat\":31.592245},{\"lng\":117.416241,\"lat\":31.586914},{\"lng\":117.416576,\"lat\":31.584225},{\"lng\":117.417383,\"lat\":31.578838},{\"lng\":117.417856,\"lat\":31.576265},{\"lng\":117.420205,\"lat\":31.569095},{\"lng\":117.421951,\"lat\":31.565661},{\"lng\":117.42369,\"lat\":31.563373},{\"lng\":117.425435,\"lat\":31.561589},{\"lng\":117.427577,\"lat\":31.560209},{\"lng\":117.428758,\"lat\":31.559753},{\"lng\":117.428576,\"lat\":31.559466},{\"lng\":117.427303,\"lat\":31.558434},{\"lng\":117.425131,\"lat\":31.556808},{\"lng\":117.420503,\"lat\":31.556495},{\"lng\":117.41488,\"lat\":31.556574},{\"lng\":117.409238,\"lat\":31.556419},{\"lng\":117.403611,\"lat\":31.55649},{\"lng\":117.398782,\"lat\":31.556779},{\"lng\":117.394221,\"lat\":31.556838},{\"lng\":117.390459,\"lat\":31.556885},{\"lng\":117.38534,\"lat\":31.55603},{\"lng\":117.38048,\"lat\":31.554254},{\"lng\":117.377211,\"lat\":31.551998},{\"lng\":117.366853,\"lat\":31.545631},{\"lng\":117.360216,\"lat\":31.543286},{\"lng\":117.353412,\"lat\":31.54088},{\"lng\":117.330891,\"lat\":31.537387},{\"lng\":117.310937,\"lat\":31.536544},{\"lng\":117.287538,\"lat\":31.531708},{\"lng\":117.281912,\"lat\":31.529647},{\"lng\":117.278591,\"lat\":31.522349},{\"lng\":117.275592,\"lat\":31.519632},{\"lng\":117.272602,\"lat\":31.517605},{\"lng\":117.267457,\"lat\":31.514913},{\"lng\":117.259361,\"lat\":31.512256},{\"lng\":117.253142,\"lat\":31.509349},{\"lng\":117.249626,\"lat\":31.507101},{\"lng\":117.247061,\"lat\":31.505641},{\"lng\":117.243621,\"lat\":31.506855},{\"lng\":117.242279,\"lat\":31.508166},{\"lng\":117.241272,\"lat\":31.51063},{\"lng\":117.239591,\"lat\":31.51417},{\"lng\":117.239601,\"lat\":31.514346},{\"lng\":117.238595,\"lat\":31.520571},{\"lng\":117.240262,\"lat\":31.526691},{\"lng\":117.233684,\"lat\":31.529015},{\"lng\":117.230327,\"lat\":31.531442},{\"lng\":117.22645,\"lat\":31.539159},{\"lng\":117.225627,\"lat\":31.543772},{\"lng\":117.221889,\"lat\":31.544154},{\"lng\":117.213243,\"lat\":31.5429},{\"lng\":117.206594,\"lat\":31.543856},{\"lng\":117.195127,\"lat\":31.550052},{\"lng\":117.155739,\"lat\":31.545243},{\"lng\":117.150374,\"lat\":31.545002},{\"lng\":117.14202,\"lat\":31.549511},{\"lng\":117.139242,\"lat\":31.551064},{\"lng\":117.134473,\"lat\":31.553658},{\"lng\":117.125147,\"lat\":31.544863},{\"lng\":117.112293,\"lat\":31.540098},{\"lng\":117.084781,\"lat\":31.548246},{\"lng\":117.072684,\"lat\":31.553502},{\"lng\":117.068961,\"lat\":31.554325},{\"lng\":117.065967,\"lat\":31.55352},{\"lng\":117.055008,\"lat\":31.54475},{\"lng\":117.050332,\"lat\":31.542855},{\"lng\":117.039628,\"lat\":31.538883},{\"lng\":117.030035,\"lat\":31.541052},{\"lng\":117.018132,\"lat\":31.54513},{\"lng\":117.009721,\"lat\":31.549313},{\"lng\":117.004186,\"lat\":31.546527},{\"lng\":117.002095,\"lat\":31.549442},{\"lng\":116.998931,\"lat\":31.554275},{\"lng\":116.995489,\"lat\":31.558197},{\"lng\":116.990922,\"lat\":31.559375},{\"lng\":116.984988,\"lat\":31.558268},{\"lng\":116.981711,\"lat\":31.555544},{\"lng\":116.978704,\"lat\":31.551896},{\"lng\":116.979706,\"lat\":31.546616},{\"lng\":116.981526,\"lat\":31.54225},{\"lng\":116.981465,\"lat\":31.538124},{\"lng\":116.975253,\"lat\":31.535689},{\"lng\":116.970967,\"lat\":31.539654},{\"lng\":116.966934,\"lat\":31.539796},{\"lng\":116.960628,\"lat\":31.537496},{\"lng\":116.952539,\"lat\":31.532053},{\"lng\":116.947117,\"lat\":31.536366},{\"lng\":116.936023,\"lat\":31.535158},{\"lng\":116.934545,\"lat\":31.53773},{\"lng\":116.931805,\"lat\":31.536911},{\"lng\":116.927014,\"lat\":31.534692},{\"lng\":116.923606,\"lat\":31.534902},{\"lng\":116.917139,\"lat\":31.533583},{\"lng\":116.914993,\"lat\":31.532917},{\"lng\":116.912022,\"lat\":31.531569},{\"lng\":116.906888,\"lat\":31.529324},{\"lng\":116.902051,\"lat\":31.528222},{\"lng\":116.897762,\"lat\":31.528262},{\"lng\":116.893752,\"lat\":31.529219},{\"lng\":116.889204,\"lat\":31.529949},{\"lng\":116.88412,\"lat\":31.530917},{\"lng\":116.879305,\"lat\":31.531655},{\"lng\":116.872601,\"lat\":31.531034},{\"lng\":116.865889,\"lat\":31.530188},{\"lng\":116.861321,\"lat\":31.528633},{\"lng\":116.85677,\"lat\":31.528679},{\"lng\":116.849784,\"lat\":31.527148},{\"lng\":116.845494,\"lat\":31.526509},{\"lng\":116.839306,\"lat\":31.524052},{\"lng\":116.831758,\"lat\":31.519778},{\"lng\":116.828894,\"lat\":31.519482},{\"lng\":116.828729,\"lat\":31.519949},{\"lng\":116.828139,\"lat\":31.520626},{\"lng\":116.827144,\"lat\":31.521134},{\"lng\":116.826638,\"lat\":31.52122},{\"lng\":116.826099,\"lat\":31.52112},{\"lng\":116.82561,\"lat\":31.520766},{\"lng\":116.825171,\"lat\":31.52075},{\"lng\":116.824446,\"lat\":31.520903},{\"lng\":116.823924,\"lat\":31.52114},{\"lng\":116.822693,\"lat\":31.522072},{\"lng\":116.822491,\"lat\":31.522562},{\"lng\":116.822423,\"lat\":31.523677},{\"lng\":116.822154,\"lat\":31.524505},{\"lng\":116.820215,\"lat\":31.526147},{\"lng\":116.819894,\"lat\":31.526536},{\"lng\":116.818765,\"lat\":31.528548},{\"lng\":116.818377,\"lat\":31.528887},{\"lng\":116.817956,\"lat\":31.528989},{\"lng\":116.817399,\"lat\":31.528973},{\"lng\":116.816893,\"lat\":31.528889},{\"lng\":116.816455,\"lat\":31.528958},{\"lng\":116.816152,\"lat\":31.529161},{\"lng\":116.816034,\"lat\":31.529533},{\"lng\":116.816067,\"lat\":31.530023},{\"lng\":116.816101,\"lat\":31.531002},{\"lng\":116.815713,\"lat\":31.531915},{\"lng\":116.815359,\"lat\":31.53227},{\"lng\":116.814786,\"lat\":31.532406},{\"lng\":116.812931,\"lat\":31.532494},{\"lng\":116.812408,\"lat\":31.532647},{\"lng\":116.811599,\"lat\":31.533257},{\"lng\":116.810756,\"lat\":31.533967},{\"lng\":116.810351,\"lat\":31.534019},{\"lng\":116.809862,\"lat\":31.533699},{\"lng\":116.809288,\"lat\":31.533142},{\"lng\":116.80858,\"lat\":31.53267},{\"lng\":116.808075,\"lat\":31.532502},{\"lng\":116.807501,\"lat\":31.532503},{\"lng\":116.806742,\"lat\":31.532606},{\"lng\":116.806422,\"lat\":31.532877},{\"lng\":116.806253,\"lat\":31.53335},{\"lng\":116.806304,\"lat\":31.533806},{\"lng\":116.806844,\"lat\":31.534599},{\"lng\":116.807265,\"lat\":31.535274},{\"lng\":116.80735,\"lat\":31.53578},{\"lng\":116.807265,\"lat\":31.536152},{\"lng\":116.806051,\"lat\":31.537303},{\"lng\":116.804466,\"lat\":31.539248},{\"lng\":116.80369,\"lat\":31.539789},{\"lng\":116.803184,\"lat\":31.539925},{\"lng\":116.800165,\"lat\":31.540267},{\"lng\":116.799001,\"lat\":31.540708},{\"lng\":116.797483,\"lat\":31.541724},{\"lng\":116.796471,\"lat\":31.54262},{\"lng\":116.795695,\"lat\":31.542976},{\"lng\":116.793834,\"lat\":31.543346},{\"lng\":116.793369,\"lat\":31.543527},{\"lng\":116.792836,\"lat\":31.543932},{\"lng\":116.792386,\"lat\":31.545763},{\"lng\":116.79167,\"lat\":31.547152},{\"lng\":116.790954,\"lat\":31.548875},{\"lng\":116.789765,\"lat\":31.550606},{\"lng\":116.78879,\"lat\":31.551518},{\"lng\":116.786922,\"lat\":31.553265},{\"lng\":116.785862,\"lat\":31.55459},{\"lng\":116.784208,\"lat\":31.556158},{\"lng\":116.78295,\"lat\":31.557023},{\"lng\":116.782081,\"lat\":31.557438},{\"lng\":116.780419,\"lat\":31.557968},{\"lng\":116.778818,\"lat\":31.55895},{\"lng\":116.776965,\"lat\":31.560346},{\"lng\":116.775775,\"lat\":31.561905},{\"lng\":116.775447,\"lat\":31.562537},{\"lng\":116.775119,\"lat\":31.563402},{\"lng\":116.774997,\"lat\":31.564087},{\"lng\":116.774601,\"lat\":31.564836},{\"lng\":116.774341,\"lat\":31.565584},{\"lng\":116.77322,\"lat\":31.56708},{\"lng\":116.772557,\"lat\":31.56772},{\"lng\":116.76917,\"lat\":31.570097},{\"lng\":116.768042,\"lat\":31.570789},{\"lng\":116.767507,\"lat\":31.571312},{\"lng\":116.767324,\"lat\":31.572745},{\"lng\":116.767401,\"lat\":31.573945},{\"lng\":116.767142,\"lat\":31.575036},{\"lng\":116.766752,\"lat\":31.575902},{\"lng\":116.76557,\"lat\":31.577911},{\"lng\":116.764586,\"lat\":31.580219},{\"lng\":116.764334,\"lat\":31.581192},{\"lng\":116.764274,\"lat\":31.582166},{\"lng\":116.764289,\"lat\":31.583772},{\"lng\":116.764502,\"lat\":31.5848},{\"lng\":116.765937,\"lat\":31.587301},{\"lng\":116.766342,\"lat\":31.588222},{\"lng\":116.766761,\"lat\":31.589358},{\"lng\":116.766968,\"lat\":31.590558},{\"lng\":116.766853,\"lat\":31.591821},{\"lng\":116.766014,\"lat\":31.594976},{\"lng\":116.765823,\"lat\":31.596121},{\"lng\":116.765907,\"lat\":31.597438},{\"lng\":116.765785,\"lat\":31.598818},{\"lng\":116.76622,\"lat\":31.602138},{\"lng\":116.766236,\"lat\":31.603914},{\"lng\":116.765984,\"lat\":31.605231},{\"lng\":116.76587,\"lat\":31.606944},{\"lng\":116.765885,\"lat\":31.608441},{\"lng\":116.766244,\"lat\":31.611067},{\"lng\":116.766877,\"lat\":31.614098},{\"lng\":116.765649,\"lat\":31.618578},{\"lng\":116.765062,\"lat\":31.619786},{\"lng\":116.764406,\"lat\":31.620822},{\"lng\":116.763811,\"lat\":31.621516},{\"lng\":116.762476,\"lat\":31.622614},{\"lng\":116.761423,\"lat\":31.623821},{\"lng\":116.761313,\"lat\":31.623929},{\"lng\":116.76131,\"lat\":31.623978},{\"lng\":116.761224,\"lat\":31.625429},{\"lng\":116.760452,\"lat\":31.628416},{\"lng\":116.758333,\"lat\":31.631411},{\"lng\":116.756744,\"lat\":31.632799},{\"lng\":116.754643,\"lat\":31.636942},{\"lng\":116.753645,\"lat\":31.643138},{\"lng\":116.75315,\"lat\":31.647037},{\"lng\":116.753732,\"lat\":31.650929},{\"lng\":116.754297,\"lat\":31.653441},{\"lng\":116.7554,\"lat\":31.655726},{\"lng\":116.757589,\"lat\":31.659144},{\"lng\":116.7595,\"lat\":31.66142},{\"lng\":116.761679,\"lat\":31.66461},{\"lng\":116.76549,\"lat\":31.668934},{\"lng\":116.767947,\"lat\":31.672118},{\"lng\":116.76826,\"lat\":31.675781},{\"lng\":116.767496,\"lat\":31.679455},{\"lng\":116.765656,\"lat\":31.683136},{\"lng\":116.763278,\"lat\":31.685906},{\"lng\":116.762532,\"lat\":31.690723},{\"lng\":116.76314,\"lat\":31.696908},{\"lng\":116.763445,\"lat\":31.700341},{\"lng\":116.763757,\"lat\":31.704006},{\"lng\":116.763532,\"lat\":31.707215},{\"lng\":116.762239,\"lat\":31.711349},{\"lng\":116.759591,\"lat\":31.715266},{\"lng\":116.75749,\"lat\":31.718721},{\"lng\":116.753782,\"lat\":31.72379},{\"lng\":116.752741,\"lat\":31.727008},{\"lng\":116.752515,\"lat\":31.730447},{\"lng\":116.753358,\"lat\":31.73296},{\"lng\":116.755547,\"lat\":31.736608},{\"lng\":116.757197,\"lat\":31.739574},{\"lng\":116.758586,\"lat\":31.743228},{\"lng\":116.759429,\"lat\":31.746886},{\"lng\":116.759742,\"lat\":31.751009},{\"lng\":116.759786,\"lat\":31.754902},{\"lng\":116.759569,\"lat\":31.758341},{\"lng\":116.757998,\"lat\":31.762477},{\"lng\":116.755332,\"lat\":31.764102},{\"lng\":116.752119,\"lat\":31.765503},{\"lng\":116.748357,\"lat\":31.765533},{\"lng\":116.745126,\"lat\":31.76533},{\"lng\":116.740816,\"lat\":31.764905},{\"lng\":116.737583,\"lat\":31.764239},{\"lng\":116.734619,\"lat\":31.764031},{\"lng\":116.731134,\"lat\":31.765432},{\"lng\":116.73143,\"lat\":31.767721},{\"lng\":116.731986,\"lat\":31.769779},{\"lng\":116.733629,\"lat\":31.771828},{\"lng\":116.734742,\"lat\":31.7748},{\"lng\":116.734508,\"lat\":31.777779},{\"lng\":116.732926,\"lat\":31.780312},{\"lng\":116.730249,\"lat\":31.781932},{\"lng\":116.728762,\"lat\":31.782397},{\"lng\":116.72746,\"lat\":31.781722},{\"lng\":116.72179,\"lat\":31.779242},{\"lng\":116.719772,\"lat\":31.77909},{\"lng\":116.718702,\"lat\":31.779664},{\"lng\":116.717838,\"lat\":31.780364},{\"lng\":116.717104,\"lat\":31.781335},{\"lng\":116.716925,\"lat\":31.7831},{\"lng\":116.716302,\"lat\":31.783837},{\"lng\":116.716062,\"lat\":31.783846},{\"lng\":116.715582,\"lat\":31.783539},{\"lng\":116.715465,\"lat\":31.783609},{\"lng\":116.715297,\"lat\":31.783997},{\"lng\":116.714863,\"lat\":31.784004},{\"lng\":116.714836,\"lat\":31.784012},{\"lng\":116.714784,\"lat\":31.784059},{\"lng\":116.714764,\"lat\":31.784107},{\"lng\":116.714763,\"lat\":31.784159},{\"lng\":116.714836,\"lat\":31.784351},{\"lng\":116.715039,\"lat\":31.784667},{\"lng\":116.715175,\"lat\":31.784836},{\"lng\":116.715317,\"lat\":31.785049},{\"lng\":116.715279,\"lat\":31.785204},{\"lng\":116.714393,\"lat\":31.785869},{\"lng\":116.714726,\"lat\":31.786577},{\"lng\":116.714678,\"lat\":31.786976},{\"lng\":116.714746,\"lat\":31.787397},{\"lng\":116.714435,\"lat\":31.787933},{\"lng\":116.714679,\"lat\":31.788593},{\"lng\":116.714708,\"lat\":31.788942},{\"lng\":116.714571,\"lat\":31.789331},{\"lng\":116.714006,\"lat\":31.790081},{\"lng\":116.714243,\"lat\":31.790278},{\"lng\":116.714986,\"lat\":31.790304},{\"lng\":116.715452,\"lat\":31.79046},{\"lng\":116.715751,\"lat\":31.791047},{\"lng\":116.715701,\"lat\":31.791466},{\"lng\":116.715427,\"lat\":31.791674},{\"lng\":116.714356,\"lat\":31.791717},{\"lng\":116.71412,\"lat\":31.791863},{\"lng\":116.71399,\"lat\":31.793121},{\"lng\":116.713265,\"lat\":31.794328},{\"lng\":116.712977,\"lat\":31.794564},{\"lng\":116.712161,\"lat\":31.794934},{\"lng\":116.711988,\"lat\":31.795126},{\"lng\":116.711665,\"lat\":31.795996},{\"lng\":116.7119,\"lat\":31.796662},{\"lng\":116.711842,\"lat\":31.796863},{\"lng\":116.711642,\"lat\":31.796936},{\"lng\":116.711073,\"lat\":31.796864},{\"lng\":116.710454,\"lat\":31.796935},{\"lng\":116.710259,\"lat\":31.796823},{\"lng\":116.710191,\"lat\":31.796546},{\"lng\":116.710053,\"lat\":31.796414},{\"lng\":116.709801,\"lat\":31.79641},{\"lng\":116.70959,\"lat\":31.796562},{\"lng\":116.709517,\"lat\":31.79682},{\"lng\":116.7096,\"lat\":31.797007},{\"lng\":116.710188,\"lat\":31.797245},{\"lng\":116.710546,\"lat\":31.797554},{\"lng\":116.710633,\"lat\":31.797884},{\"lng\":116.71054,\"lat\":31.798193},{\"lng\":116.710205,\"lat\":31.79821},{\"lng\":116.709433,\"lat\":31.797937},{\"lng\":116.708931,\"lat\":31.79797},{\"lng\":116.708536,\"lat\":31.798411},{\"lng\":116.708286,\"lat\":31.799028},{\"lng\":116.70712,\"lat\":31.800234},{\"lng\":116.706555,\"lat\":31.800492},{\"lng\":116.706407,\"lat\":31.800692},{\"lng\":116.704516,\"lat\":31.801025},{\"lng\":116.704161,\"lat\":31.801395},{\"lng\":116.703958,\"lat\":31.801834},{\"lng\":116.703822,\"lat\":31.802391},{\"lng\":116.703576,\"lat\":31.803172},{\"lng\":116.703324,\"lat\":31.803754},{\"lng\":116.702982,\"lat\":31.804059},{\"lng\":116.702664,\"lat\":31.804139},{\"lng\":116.701931,\"lat\":31.804036},{\"lng\":116.701529,\"lat\":31.804072},{\"lng\":116.701067,\"lat\":31.804282},{\"lng\":116.700666,\"lat\":31.80461},{\"lng\":116.700483,\"lat\":31.805022},{\"lng\":116.700576,\"lat\":31.805258},{\"lng\":116.700967,\"lat\":31.805693},{\"lng\":116.700968,\"lat\":31.805872},{\"lng\":116.700865,\"lat\":31.806002},{\"lng\":116.700575,\"lat\":31.806085},{\"lng\":116.699115,\"lat\":31.806037},{\"lng\":116.698898,\"lat\":31.806158},{\"lng\":116.698583,\"lat\":31.806557},{\"lng\":116.698115,\"lat\":31.806545},{\"lng\":116.698151,\"lat\":31.806963},{\"lng\":116.698042,\"lat\":31.80719},{\"lng\":116.698025,\"lat\":31.807652},{\"lng\":116.697919,\"lat\":31.807824},{\"lng\":116.697359,\"lat\":31.807954},{\"lng\":116.697174,\"lat\":31.808231},{\"lng\":116.696829,\"lat\":31.80837},{\"lng\":116.69652,\"lat\":31.808718},{\"lng\":116.695895,\"lat\":31.808764},{\"lng\":116.695569,\"lat\":31.809199},{\"lng\":116.694817,\"lat\":31.80938},{\"lng\":116.694767,\"lat\":31.809849},{\"lng\":116.694626,\"lat\":31.810119},{\"lng\":116.694701,\"lat\":31.81072},{\"lng\":116.694628,\"lat\":31.810948},{\"lng\":116.694349,\"lat\":31.811187},{\"lng\":116.693722,\"lat\":31.811473},{\"lng\":116.69334,\"lat\":31.812366},{\"lng\":116.692524,\"lat\":31.812877},{\"lng\":116.691916,\"lat\":31.81341},{\"lng\":116.691708,\"lat\":31.813773},{\"lng\":116.691477,\"lat\":31.81457},{\"lng\":116.690105,\"lat\":31.815726},{\"lng\":116.69023,\"lat\":31.816296},{\"lng\":116.689682,\"lat\":31.816686},{\"lng\":116.689341,\"lat\":31.816949},{\"lng\":116.687804,\"lat\":31.818043},{\"lng\":116.687475,\"lat\":31.818735},{\"lng\":116.687551,\"lat\":31.819709},{\"lng\":116.688095,\"lat\":31.820505},{\"lng\":116.688775,\"lat\":31.820959},{\"lng\":116.689517,\"lat\":31.821016},{\"lng\":116.692064,\"lat\":31.820486},{\"lng\":116.692539,\"lat\":31.820252},{\"lng\":116.69298,\"lat\":31.822033},{\"lng\":116.694077,\"lat\":31.824087},{\"lng\":116.696,\"lat\":31.827285},{\"lng\":116.698724,\"lat\":31.830014},{\"lng\":116.701987,\"lat\":31.832057},{\"lng\":116.705789,\"lat\":31.834099},{\"lng\":116.709852,\"lat\":31.836134},{\"lng\":116.714193,\"lat\":31.838397},{\"lng\":116.718524,\"lat\":31.840201},{\"lng\":116.722316,\"lat\":31.841781},{\"lng\":116.725846,\"lat\":31.844048},{\"lng\":116.728829,\"lat\":31.846546},{\"lng\":116.732628,\"lat\":31.848353},{\"lng\":116.735896,\"lat\":31.851078},{\"lng\":116.738895,\"lat\":31.854493},{\"lng\":116.740555,\"lat\":31.857916},{\"lng\":116.737062,\"lat\":31.858857},{\"lng\":116.73355,\"lat\":31.857965},{\"lng\":116.727891,\"lat\":31.857548},{\"lng\":116.724657,\"lat\":31.858256},{\"lng\":116.721735,\"lat\":31.861714},{\"lng\":116.720692,\"lat\":31.865158},{\"lng\":116.721005,\"lat\":31.86836},{\"lng\":116.72158,\"lat\":31.871336},{\"lng\":116.71944,\"lat\":31.873642},{\"lng\":116.716771,\"lat\":31.875489},{\"lng\":116.714118,\"lat\":31.878944},{\"lng\":116.714136,\"lat\":31.881463},{\"lng\":116.716058,\"lat\":31.884199},{\"lng\":116.718502,\"lat\":31.886016},{\"lng\":116.721764,\"lat\":31.887826},{\"lng\":116.725824,\"lat\":31.889631},{\"lng\":116.730154,\"lat\":31.890748},{\"lng\":116.735274,\"lat\":31.891399},{\"lng\":116.740167,\"lat\":31.89411},{\"lng\":116.744225,\"lat\":31.896143},{\"lng\":116.748578,\"lat\":31.898857},{\"lng\":116.753442,\"lat\":31.901108},{\"lng\":116.759651,\"lat\":31.902433},{\"lng\":116.764253,\"lat\":31.904228},{\"lng\":116.766701,\"lat\":31.906499},{\"lng\":116.771067,\"lat\":31.91127}]', null, null, '肥西县', null, '1');
INSERT INTO `fence` VALUES ('8', '340124', null, null, null, null, '[{\"lng\":117.436705,\"lat\":31.56857},{\"lng\":117.436472,\"lat\":31.565937},{\"lng\":117.436086,\"lat\":31.56377},{\"lng\":117.436781,\"lat\":31.562143},{\"lng\":117.438405,\"lat\":31.560902},{\"lng\":117.441883,\"lat\":31.559271},{\"lng\":117.446511,\"lat\":31.55902},{\"lng\":117.447477,\"lat\":31.558227},{\"lng\":117.453324,\"lat\":31.556074},{\"lng\":117.458599,\"lat\":31.552094},{\"lng\":117.460893,\"lat\":31.545643},{\"lng\":117.465845,\"lat\":31.538916},{\"lng\":117.470562,\"lat\":31.53403},{\"lng\":117.473678,\"lat\":31.529167},{\"lng\":117.476248,\"lat\":31.523854},{\"lng\":117.479363,\"lat\":31.519218},{\"lng\":117.48118,\"lat\":31.515981},{\"lng\":117.485134,\"lat\":31.512936},{\"lng\":117.489096,\"lat\":31.510806},{\"lng\":117.492531,\"lat\":31.508687},{\"lng\":117.496225,\"lat\":31.506564},{\"lng\":117.500455,\"lat\":31.504201},{\"lng\":117.50439,\"lat\":31.500466},{\"lng\":117.506475,\"lat\":31.49768},{\"lng\":117.51118,\"lat\":31.49233},{\"lng\":117.514052,\"lat\":31.488843},{\"lng\":117.518766,\"lat\":31.484179},{\"lng\":117.521872,\"lat\":31.479313},{\"lng\":117.526033,\"lat\":31.473284},{\"lng\":117.531007,\"lat\":31.468387},{\"lng\":117.534676,\"lat\":31.464428},{\"lng\":117.538345,\"lat\":31.46093},{\"lng\":117.541729,\"lat\":31.45652},{\"lng\":117.544325,\"lat\":31.452806},{\"lng\":117.546402,\"lat\":31.449335},{\"lng\":117.548462,\"lat\":31.445862},{\"lng\":117.550298,\"lat\":31.443997},{\"lng\":117.552921,\"lat\":31.441434},{\"lng\":117.553587,\"lat\":31.434778},{\"lng\":117.554054,\"lat\":31.431102},{\"lng\":117.553928,\"lat\":31.430312},{\"lng\":117.555165,\"lat\":31.428003},{\"lng\":117.555755,\"lat\":31.425162},{\"lng\":117.555713,\"lat\":31.423954},{\"lng\":117.555044,\"lat\":31.421274},{\"lng\":117.554374,\"lat\":31.418632},{\"lng\":117.554571,\"lat\":31.413938},{\"lng\":117.555043,\"lat\":31.408021},{\"lng\":117.555553,\"lat\":31.40159},{\"lng\":117.554924,\"lat\":31.399028},{\"lng\":117.553665,\"lat\":31.397097},{\"lng\":117.552012,\"lat\":31.395247},{\"lng\":117.54564,\"lat\":31.387728},{\"lng\":117.544303,\"lat\":31.38639},{\"lng\":117.543556,\"lat\":31.384695},{\"lng\":117.542691,\"lat\":31.381818},{\"lng\":117.541039,\"lat\":31.380796},{\"lng\":117.539702,\"lat\":31.379616},{\"lng\":117.538562,\"lat\":31.378041},{\"lng\":117.53695,\"lat\":31.375206},{\"lng\":117.53463,\"lat\":31.371819},{\"lng\":117.532821,\"lat\":31.369655},{\"lng\":117.529558,\"lat\":31.36426},{\"lng\":117.527868,\"lat\":31.360951},{\"lng\":117.525549,\"lat\":31.357842},{\"lng\":117.521107,\"lat\":31.352923},{\"lng\":117.519417,\"lat\":31.350562},{\"lng\":117.518709,\"lat\":31.34871},{\"lng\":117.519023,\"lat\":31.339912},{\"lng\":117.519179,\"lat\":31.331667},{\"lng\":117.518904,\"lat\":31.329932},{\"lng\":117.518157,\"lat\":31.324925},{\"lng\":117.517487,\"lat\":31.309384},{\"lng\":117.516896,\"lat\":31.293488},{\"lng\":117.516896,\"lat\":31.291042},{\"lng\":117.516699,\"lat\":31.28978},{\"lng\":117.516031,\"lat\":31.28777},{\"lng\":117.515795,\"lat\":31.286509},{\"lng\":117.516306,\"lat\":31.286073},{\"lng\":117.520158,\"lat\":31.287246},{\"lng\":117.523066,\"lat\":31.287947},{\"lng\":117.523891,\"lat\":31.287945},{\"lng\":117.545395,\"lat\":31.284376},{\"lng\":117.562152,\"lat\":31.281698},{\"lng\":117.564671,\"lat\":31.280747},{\"lng\":117.565734,\"lat\":31.280312},{\"lng\":117.566127,\"lat\":31.279719},{\"lng\":117.569826,\"lat\":31.274467},{\"lng\":117.571715,\"lat\":31.271821},{\"lng\":117.572094,\"lat\":31.27122},{\"lng\":117.572128,\"lat\":31.271038},{\"lng\":117.57444,\"lat\":31.258599},{\"lng\":117.575922,\"lat\":31.2542},{\"lng\":117.57476,\"lat\":31.25009},{\"lng\":117.559875,\"lat\":31.231319},{\"lng\":117.558471,\"lat\":31.228818},{\"lng\":117.556903,\"lat\":31.218971},{\"lng\":117.555733,\"lat\":31.215089},{\"lng\":117.551377,\"lat\":31.211501},{\"lng\":117.540314,\"lat\":31.205988},{\"lng\":117.525265,\"lat\":31.200562},{\"lng\":117.534574,\"lat\":31.189804},{\"lng\":117.536513,\"lat\":31.188854},{\"lng\":117.542355,\"lat\":31.185997},{\"lng\":117.555011,\"lat\":31.177201},{\"lng\":117.558899,\"lat\":31.168535},{\"lng\":117.558794,\"lat\":31.159133},{\"lng\":117.55462,\"lat\":31.154956},{\"lng\":117.554879,\"lat\":31.149134},{\"lng\":117.552402,\"lat\":31.145178},{\"lng\":117.547207,\"lat\":31.142239},{\"lng\":117.542662,\"lat\":31.141627},{\"lng\":117.536768,\"lat\":31.13966},{\"lng\":117.530857,\"lat\":31.137005},{\"lng\":117.528945,\"lat\":31.134287},{\"lng\":117.527829,\"lat\":31.131555},{\"lng\":117.527491,\"lat\":31.12766},{\"lng\":117.527412,\"lat\":31.123761},{\"lng\":117.52736,\"lat\":31.121012},{\"lng\":117.5273,\"lat\":31.118031},{\"lng\":117.52511,\"lat\":31.114858},{\"lng\":117.52139,\"lat\":31.114919},{\"lng\":117.517393,\"lat\":31.114988},{\"lng\":117.513889,\"lat\":31.112523},{\"lng\":117.512496,\"lat\":31.109335},{\"lng\":117.512185,\"lat\":31.106589},{\"lng\":117.513473,\"lat\":31.104503},{\"lng\":117.516328,\"lat\":31.101014},{\"lng\":117.521838,\"lat\":31.097022},{\"lng\":117.5242,\"lat\":31.095148},{\"lng\":117.526017,\"lat\":31.092593},{\"lng\":117.52702,\"lat\":31.089594},{\"lng\":117.527201,\"lat\":31.085003},{\"lng\":117.527677,\"lat\":31.082014},{\"lng\":117.528681,\"lat\":31.079247},{\"lng\":117.527547,\"lat\":31.075364},{\"lng\":117.526162,\"lat\":31.072178},{\"lng\":117.52418,\"lat\":31.066477},{\"lng\":117.520105,\"lat\":31.061729},{\"lng\":117.517639,\"lat\":31.05572},{\"lng\":117.515121,\"lat\":31.051493},{\"lng\":117.514602,\"lat\":31.048796},{\"lng\":117.51211,\"lat\":31.047138},{\"lng\":117.501617,\"lat\":31.046893},{\"lng\":117.494436,\"lat\":31.046359},{\"lng\":117.489185,\"lat\":31.044155},{\"lng\":117.48504,\"lat\":31.041948},{\"lng\":117.482556,\"lat\":31.039182},{\"lng\":117.48394,\"lat\":31.03585},{\"lng\":117.488362,\"lat\":31.03223},{\"lng\":117.493604,\"lat\":31.029996},{\"lng\":117.496087,\"lat\":31.025828},{\"lng\":117.499408,\"lat\":31.018885},{\"lng\":117.507547,\"lat\":31.003448},{\"lng\":117.503447,\"lat\":31.001842},{\"lng\":117.500713,\"lat\":31.000543},{\"lng\":117.494804,\"lat\":30.996003},{\"lng\":117.491533,\"lat\":30.994908},{\"lng\":117.486524,\"lat\":30.993583},{\"lng\":117.484326,\"lat\":30.99312},{\"lng\":117.48289,\"lat\":30.992485},{\"lng\":117.466444,\"lat\":30.990235},{\"lng\":117.459249,\"lat\":30.988973},{\"lng\":117.453048,\"lat\":30.984943},{\"lng\":117.450111,\"lat\":30.984299},{\"lng\":117.448222,\"lat\":30.982722},{\"lng\":117.446844,\"lat\":30.98022},{\"lng\":117.445457,\"lat\":30.977029},{\"lng\":117.444582,\"lat\":30.972685},{\"lng\":117.444001,\"lat\":30.970171},{\"lng\":117.441565,\"lat\":30.96791},{\"lng\":117.43679,\"lat\":30.968901},{\"lng\":117.433894,\"lat\":30.970776},{\"lng\":117.430461,\"lat\":30.971974},{\"lng\":117.425699,\"lat\":30.973876},{\"lng\":117.422265,\"lat\":30.97553},{\"lng\":117.419619,\"lat\":30.976485},{\"lng\":117.415636,\"lat\":30.977227},{\"lng\":117.412971,\"lat\":30.977262},{\"lng\":117.409213,\"lat\":30.975706},{\"lng\":117.406252,\"lat\":30.974138},{\"lng\":117.402752,\"lat\":30.972348},{\"lng\":117.395724,\"lat\":30.968105},{\"lng\":117.391501,\"lat\":30.966762},{\"lng\":117.387886,\"lat\":30.965889},{\"lng\":117.38547,\"lat\":30.964814},{\"lng\":117.384131,\"lat\":30.962266},{\"lng\":117.383992,\"lat\":30.958981},{\"lng\":117.384261,\"lat\":30.954827},{\"lng\":117.384461,\"lat\":30.953285},{\"lng\":117.383252,\"lat\":30.951877},{\"lng\":117.378288,\"lat\":30.951133},{\"lng\":117.37601,\"lat\":30.951063},{\"lng\":117.371445,\"lat\":30.95099},{\"lng\":117.369236,\"lat\":30.95186},{\"lng\":117.367758,\"lat\":30.952996},{\"lng\":117.366618,\"lat\":30.955341},{\"lng\":117.365471,\"lat\":30.957617},{\"lng\":117.36514,\"lat\":30.959024},{\"lng\":117.36608,\"lat\":30.959831},{\"lng\":117.367419,\"lat\":30.960636},{\"lng\":117.368898,\"lat\":30.961978},{\"lng\":117.369498,\"lat\":30.963655},{\"lng\":117.368229,\"lat\":30.967875},{\"lng\":117.36675,\"lat\":30.971493},{\"lng\":117.364002,\"lat\":30.975644},{\"lng\":117.359636,\"lat\":30.981133},{\"lng\":117.357356,\"lat\":30.984615},{\"lng\":117.356548,\"lat\":30.987896},{\"lng\":117.354938,\"lat\":30.989101},{\"lng\":117.35198,\"lat\":30.99077},{\"lng\":117.348891,\"lat\":30.992106},{\"lng\":117.346411,\"lat\":30.992234},{\"lng\":117.343253,\"lat\":30.991223},{\"lng\":117.340433,\"lat\":30.990279},{\"lng\":117.337813,\"lat\":30.987662},{\"lng\":117.334863,\"lat\":30.987589},{\"lng\":117.331374,\"lat\":30.988453},{\"lng\":117.324786,\"lat\":30.989244},{\"lng\":117.321166,\"lat\":30.991248},{\"lng\":117.317808,\"lat\":30.995064},{\"lng\":117.314049,\"lat\":30.999814},{\"lng\":117.311969,\"lat\":31.00028},{\"lng\":117.308341,\"lat\":31.000743},{\"lng\":117.306323,\"lat\":31.000003},{\"lng\":117.301825,\"lat\":30.993695},{\"lng\":117.300145,\"lat\":30.989336},{\"lng\":117.298005,\"lat\":30.985514},{\"lng\":117.295718,\"lat\":30.985309},{\"lng\":117.291491,\"lat\":30.984432},{\"lng\":117.287134,\"lat\":30.98302},{\"lng\":117.285186,\"lat\":30.982414},{\"lng\":117.277336,\"lat\":30.984752},{\"lng\":117.273851,\"lat\":30.987565},{\"lng\":117.27035,\"lat\":30.991715},{\"lng\":117.265397,\"lat\":30.995601},{\"lng\":117.258162,\"lat\":31.001499},{\"lng\":117.252335,\"lat\":31.007195},{\"lng\":117.249991,\"lat\":31.009139},{\"lng\":117.24704,\"lat\":31.011217},{\"lng\":117.241285,\"lat\":31.014101},{\"lng\":117.235723,\"lat\":31.016517},{\"lng\":117.231506,\"lat\":31.019536},{\"lng\":117.229364,\"lat\":31.022355},{\"lng\":117.228089,\"lat\":31.025774},{\"lng\":117.227023,\"lat\":31.030332},{\"lng\":117.226953,\"lat\":31.033548},{\"lng\":117.225418,\"lat\":31.037035},{\"lng\":117.222409,\"lat\":31.04106},{\"lng\":117.218655,\"lat\":31.044816},{\"lng\":117.216253,\"lat\":31.049779},{\"lng\":117.21438,\"lat\":31.054072},{\"lng\":117.21204,\"lat\":31.057291},{\"lng\":117.206882,\"lat\":31.059713},{\"lng\":117.203805,\"lat\":31.061125},{\"lng\":117.201195,\"lat\":31.062604},{\"lng\":117.198388,\"lat\":31.064752},{\"lng\":117.194245,\"lat\":31.067643},{\"lng\":117.190571,\"lat\":31.069725},{\"lng\":117.189227,\"lat\":31.071069},{\"lng\":117.187495,\"lat\":31.073216},{\"lng\":117.185822,\"lat\":31.076571},{\"lng\":117.18428,\"lat\":31.078652},{\"lng\":117.178396,\"lat\":31.083353},{\"lng\":117.176325,\"lat\":31.084363},{\"lng\":117.174384,\"lat\":31.08517},{\"lng\":117.17285,\"lat\":31.085509},{\"lng\":117.17071,\"lat\":31.085379},{\"lng\":117.167166,\"lat\":31.083576},{\"lng\":117.161879,\"lat\":31.07695},{\"lng\":117.159009,\"lat\":31.074141},{\"lng\":117.156262,\"lat\":31.072403},{\"lng\":117.154017,\"lat\":31.073279},{\"lng\":117.15152,\"lat\":31.073757},{\"lng\":117.14879,\"lat\":31.073659},{\"lng\":117.146735,\"lat\":31.072716},{\"lng\":117.144915,\"lat\":31.07228},{\"lng\":117.141576,\"lat\":31.071709},{\"lng\":117.138637,\"lat\":31.072254},{\"lng\":117.135974,\"lat\":31.073136},{\"lng\":117.127978,\"lat\":31.077809},{\"lng\":117.124022,\"lat\":31.079637},{\"lng\":117.117817,\"lat\":31.084034},{\"lng\":117.117305,\"lat\":31.085048},{\"lng\":117.118486,\"lat\":31.092482},{\"lng\":117.119467,\"lat\":31.096097},{\"lng\":117.12011,\"lat\":31.097008},{\"lng\":117.120891,\"lat\":31.098528},{\"lng\":117.122201,\"lat\":31.100622},{\"lng\":117.122809,\"lat\":31.101805},{\"lng\":117.121898,\"lat\":31.109173},{\"lng\":117.121022,\"lat\":31.11164},{\"lng\":117.120215,\"lat\":31.114073},{\"lng\":117.119131,\"lat\":31.115493},{\"lng\":117.118054,\"lat\":31.116508},{\"lng\":117.117577,\"lat\":31.118467},{\"lng\":117.11684,\"lat\":31.121711},{\"lng\":117.117179,\"lat\":31.124414},{\"lng\":117.118255,\"lat\":31.125834},{\"lng\":117.119947,\"lat\":31.127116},{\"lng\":117.121362,\"lat\":31.128263},{\"lng\":117.121969,\"lat\":31.129277},{\"lng\":117.121501,\"lat\":31.130495},{\"lng\":117.120954,\"lat\":31.131577},{\"lng\":117.119948,\"lat\":31.133063},{\"lng\":117.119401,\"lat\":31.134416},{\"lng\":117.119402,\"lat\":31.137119},{\"lng\":117.11974,\"lat\":31.138402},{\"lng\":117.120487,\"lat\":31.13955},{\"lng\":117.121094,\"lat\":31.140497},{\"lng\":117.122778,\"lat\":31.141711},{\"lng\":117.123663,\"lat\":31.142929},{\"lng\":117.123186,\"lat\":31.146442},{\"lng\":117.12211,\"lat\":31.148538},{\"lng\":117.12008,\"lat\":31.15131},{\"lng\":117.117919,\"lat\":31.153678},{\"lng\":117.117242,\"lat\":31.155908},{\"lng\":117.114543,\"lat\":31.160776},{\"lng\":117.110021,\"lat\":31.168481},{\"lng\":117.109413,\"lat\":31.169562},{\"lng\":117.109413,\"lat\":31.171994},{\"lng\":117.108328,\"lat\":31.17605},{\"lng\":117.10502,\"lat\":31.179294},{\"lng\":117.104004,\"lat\":31.181457},{\"lng\":117.103058,\"lat\":31.185309},{\"lng\":117.103397,\"lat\":31.187539},{\"lng\":117.102789,\"lat\":31.188958},{\"lng\":117.100157,\"lat\":31.190513},{\"lng\":117.0963,\"lat\":31.195851},{\"lng\":117.08961,\"lat\":31.20578},{\"lng\":117.087562,\"lat\":31.208903},{\"lng\":117.087517,\"lat\":31.208994},{\"lng\":117.087459,\"lat\":31.209059},{\"lng\":117.079196,\"lat\":31.221651},{\"lng\":117.078448,\"lat\":31.224692},{\"lng\":117.078649,\"lat\":31.226516},{\"lng\":117.078988,\"lat\":31.228343},{\"lng\":117.075605,\"lat\":31.234487},{\"lng\":117.073579,\"lat\":31.235837},{\"lng\":117.071343,\"lat\":31.236848},{\"lng\":117.069107,\"lat\":31.236912},{\"lng\":117.061388,\"lat\":31.235885},{\"lng\":117.055086,\"lat\":31.235399},{\"lng\":117.052918,\"lat\":31.236003},{\"lng\":117.048721,\"lat\":31.240049},{\"lng\":117.046351,\"lat\":31.24369},{\"lng\":117.042215,\"lat\":31.252466},{\"lng\":117.040725,\"lat\":31.254151},{\"lng\":117.038417,\"lat\":31.255665},{\"lng\":117.036457,\"lat\":31.256099},{\"lng\":117.032249,\"lat\":31.256628},{\"lng\":117.036118,\"lat\":31.261504},{\"lng\":117.039472,\"lat\":31.264013},{\"lng\":117.042861,\"lat\":31.267064},{\"lng\":117.045264,\"lat\":31.268995},{\"lng\":117.046353,\"lat\":31.270315},{\"lng\":117.046763,\"lat\":31.274237},{\"lng\":117.046537,\"lat\":31.276992},{\"lng\":117.045771,\"lat\":31.279977},{\"lng\":117.045815,\"lat\":31.282961},{\"lng\":117.048001,\"lat\":31.285464},{\"lng\":117.05232,\"lat\":31.287265},{\"lng\":117.05824,\"lat\":31.288591},{\"lng\":117.063889,\"lat\":31.289461},{\"lng\":117.066056,\"lat\":31.291275},{\"lng\":117.069363,\"lat\":31.296979},{\"lng\":117.070764,\"lat\":31.301093},{\"lng\":117.070652,\"lat\":31.311872},{\"lng\":117.0702,\"lat\":31.317149},{\"lng\":117.070001,\"lat\":31.321736},{\"lng\":117.070593,\"lat\":31.325629},{\"lng\":117.071724,\"lat\":31.329747},{\"lng\":117.073691,\"lat\":31.335461},{\"lng\":117.075343,\"lat\":31.338424},{\"lng\":117.078353,\"lat\":31.342525},{\"lng\":117.081362,\"lat\":31.345934},{\"lng\":117.081954,\"lat\":31.350287},{\"lng\":117.079598,\"lat\":31.353747},{\"lng\":117.076693,\"lat\":31.356755},{\"lng\":117.074067,\"lat\":31.360678},{\"lng\":117.072789,\"lat\":31.364819},{\"lng\":117.072841,\"lat\":31.368025},{\"lng\":117.073694,\"lat\":31.371458},{\"lng\":117.074816,\"lat\":31.374427},{\"lng\":117.077017,\"lat\":31.378305},{\"lng\":117.079479,\"lat\":31.38149},{\"lng\":117.081949,\"lat\":31.384907},{\"lng\":117.084148,\"lat\":31.388554},{\"lng\":117.086079,\"lat\":31.392205},{\"lng\":117.088296,\"lat\":31.396995},{\"lng\":117.091338,\"lat\":31.403155},{\"lng\":117.094372,\"lat\":31.408855},{\"lng\":117.097109,\"lat\":31.412724},{\"lng\":117.099316,\"lat\":31.416599},{\"lng\":117.102331,\"lat\":31.420693},{\"lng\":117.104537,\"lat\":31.424796},{\"lng\":117.106735,\"lat\":31.42844},{\"lng\":117.109766,\"lat\":31.43368},{\"lng\":117.113048,\"lat\":31.438458},{\"lng\":117.116867,\"lat\":31.443},{\"lng\":117.119072,\"lat\":31.446641},{\"lng\":117.121797,\"lat\":31.449589},{\"lng\":117.124522,\"lat\":31.452769},{\"lng\":117.1286,\"lat\":31.456385},{\"lng\":117.1324,\"lat\":31.460239},{\"lng\":117.135948,\"lat\":31.464094},{\"lng\":117.138679,\"lat\":31.467956},{\"lng\":117.142495,\"lat\":31.472034},{\"lng\":117.144689,\"lat\":31.475445},{\"lng\":117.147169,\"lat\":31.479999},{\"lng\":117.147935,\"lat\":31.481878},{\"lng\":117.149188,\"lat\":31.483304},{\"lng\":117.15059,\"lat\":31.484274},{\"lng\":117.152388,\"lat\":31.485307},{\"lng\":117.155192,\"lat\":31.486282},{\"lng\":117.155772,\"lat\":31.486857},{\"lng\":117.166428,\"lat\":31.490616},{\"lng\":117.184502,\"lat\":31.492833},{\"lng\":117.20162,\"lat\":31.492913},{\"lng\":117.210575,\"lat\":31.491203},{\"lng\":117.228284,\"lat\":31.490423},{\"lng\":117.240247,\"lat\":31.490462},{\"lng\":117.245311,\"lat\":31.491523},{\"lng\":117.25096,\"lat\":31.496442},{\"lng\":117.253341,\"lat\":31.499731},{\"lng\":117.253006,\"lat\":31.500385},{\"lng\":117.252472,\"lat\":31.502046},{\"lng\":117.251595,\"lat\":31.503365},{\"lng\":117.24784,\"lat\":31.505366},{\"lng\":117.247061,\"lat\":31.505641},{\"lng\":117.249626,\"lat\":31.507101},{\"lng\":117.253142,\"lat\":31.509349},{\"lng\":117.259361,\"lat\":31.512256},{\"lng\":117.267457,\"lat\":31.514913},{\"lng\":117.272602,\"lat\":31.517605},{\"lng\":117.275592,\"lat\":31.519632},{\"lng\":117.278591,\"lat\":31.522349},{\"lng\":117.281912,\"lat\":31.529647},{\"lng\":117.287538,\"lat\":31.531708},{\"lng\":117.310937,\"lat\":31.536544},{\"lng\":117.330891,\"lat\":31.537387},{\"lng\":117.353412,\"lat\":31.54088},{\"lng\":117.360216,\"lat\":31.543286},{\"lng\":117.366853,\"lat\":31.545631},{\"lng\":117.377211,\"lat\":31.551998},{\"lng\":117.38048,\"lat\":31.554254},{\"lng\":117.38534,\"lat\":31.55603},{\"lng\":117.390459,\"lat\":31.556885},{\"lng\":117.394221,\"lat\":31.556838},{\"lng\":117.398782,\"lat\":31.556779},{\"lng\":117.403611,\"lat\":31.55649},{\"lng\":117.409238,\"lat\":31.556419},{\"lng\":117.41488,\"lat\":31.556574},{\"lng\":117.420503,\"lat\":31.556495},{\"lng\":117.425131,\"lat\":31.556808},{\"lng\":117.427303,\"lat\":31.558434},{\"lng\":117.428576,\"lat\":31.559466},{\"lng\":117.428758,\"lat\":31.559753},{\"lng\":117.432853,\"lat\":31.565878},{\"lng\":117.436705,\"lat\":31.56857}]', null, null, '庐江县', null, '1');
INSERT INTO `fence` VALUES ('9', '340181', null, null, null, null, '[{\"lng\":117.951848,\"lat\":31.906244},{\"lng\":117.950645,\"lat\":31.905458},{\"lng\":117.94943,\"lat\":31.904545},{\"lng\":117.948139,\"lat\":31.903002},{\"lng\":117.948001,\"lat\":31.902201},{\"lng\":117.948062,\"lat\":31.901515},{\"lng\":117.94833,\"lat\":31.900765},{\"lng\":117.949409,\"lat\":31.89875},{\"lng\":117.949627,\"lat\":31.895787},{\"lng\":117.947626,\"lat\":31.890777},{\"lng\":117.946749,\"lat\":31.886831},{\"lng\":117.94675,\"lat\":31.886803},{\"lng\":117.946737,\"lat\":31.88678},{\"lng\":117.946713,\"lat\":31.886671},{\"lng\":117.944713,\"lat\":31.881658},{\"lng\":117.944061,\"lat\":31.87663},{\"lng\":117.943165,\"lat\":31.872976},{\"lng\":117.941722,\"lat\":31.868873},{\"lng\":117.940583,\"lat\":31.866372},{\"lng\":117.938888,\"lat\":31.863419},{\"lng\":117.937749,\"lat\":31.860462},{\"lng\":117.936324,\"lat\":31.857503},{\"lng\":117.935741,\"lat\":31.855452},{\"lng\":117.933812,\"lat\":31.853421},{\"lng\":117.931327,\"lat\":31.850938},{\"lng\":117.929424,\"lat\":31.849825},{\"lng\":117.928034,\"lat\":31.848242},{\"lng\":117.925046,\"lat\":31.846916},{\"lng\":117.922589,\"lat\":31.845352},{\"lng\":117.92014,\"lat\":31.844246},{\"lng\":117.91632,\"lat\":31.842248},{\"lng\":117.913872,\"lat\":31.84091},{\"lng\":117.910834,\"lat\":31.837753},{\"lng\":117.909705,\"lat\":31.835483},{\"lng\":117.908031,\"lat\":31.832532},{\"lng\":117.907432,\"lat\":31.830022},{\"lng\":117.906295,\"lat\":31.827064},{\"lng\":117.906234,\"lat\":31.824543},{\"lng\":117.90481,\"lat\":31.82136},{\"lng\":117.903674,\"lat\":31.818628},{\"lng\":117.903092,\"lat\":31.816806},{\"lng\":117.901695,\"lat\":31.814537},{\"lng\":117.901366,\"lat\":31.811794},{\"lng\":117.902849,\"lat\":31.806272},{\"lng\":117.904644,\"lat\":31.802344},{\"lng\":117.905407,\"lat\":31.8005},{\"lng\":117.907212,\"lat\":31.797491},{\"lng\":117.909033,\"lat\":31.794939},{\"lng\":117.911394,\"lat\":31.792151},{\"lng\":117.912678,\"lat\":31.789838},{\"lng\":117.913433,\"lat\":31.787536},{\"lng\":117.912027,\"lat\":31.785269},{\"lng\":117.909822,\"lat\":31.782326},{\"lng\":117.907609,\"lat\":31.779613},{\"lng\":117.905943,\"lat\":31.777578},{\"lng\":117.905353,\"lat\":31.775298},{\"lng\":117.90504,\"lat\":31.773471},{\"lng\":117.905786,\"lat\":31.770939},{\"lng\":117.907626,\"lat\":31.769073},{\"lng\":117.909465,\"lat\":31.767439},{\"lng\":117.912658,\"lat\":31.766009},{\"lng\":117.914084,\"lat\":31.765316},{\"lng\":117.914269,\"lat\":31.765272},{\"lng\":117.916612,\"lat\":31.764805},{\"lng\":117.91829,\"lat\":31.764568},{\"lng\":117.921641,\"lat\":31.763293},{\"lng\":117.923182,\"lat\":31.762372},{\"lng\":117.92438,\"lat\":31.761228},{\"lng\":117.925121,\"lat\":31.760304},{\"lng\":117.924777,\"lat\":31.759044},{\"lng\":117.923693,\"lat\":31.758023},{\"lng\":117.921007,\"lat\":31.756372},{\"lng\":117.918312,\"lat\":31.754893},{\"lng\":117.91629,\"lat\":31.753067},{\"lng\":117.915955,\"lat\":31.75261},{\"lng\":117.915276,\"lat\":31.750324},{\"lng\":117.915191,\"lat\":31.748034},{\"lng\":117.915253,\"lat\":31.746086},{\"lng\":117.915649,\"lat\":31.744425},{\"lng\":117.917113,\"lat\":31.742584},{\"lng\":117.918332,\"lat\":31.741641},{\"lng\":117.920057,\"lat\":31.734147},{\"lng\":117.919999,\"lat\":31.728308},{\"lng\":117.918629,\"lat\":31.723561},{\"lng\":117.914583,\"lat\":31.716764},{\"lng\":117.913075,\"lat\":31.715362},{\"lng\":117.913222,\"lat\":31.704049},{\"lng\":117.91583,\"lat\":31.69871},{\"lng\":117.922584,\"lat\":31.693285},{\"lng\":117.923252,\"lat\":31.69239},{\"lng\":117.92458,\"lat\":31.689866},{\"lng\":117.926312,\"lat\":31.686942},{\"lng\":117.927984,\"lat\":31.685326},{\"lng\":117.93226,\"lat\":31.681819},{\"lng\":117.934138,\"lat\":31.680843},{\"lng\":117.938224,\"lat\":31.679916},{\"lng\":117.940302,\"lat\":31.679562},{\"lng\":117.94144,\"lat\":31.67905},{\"lng\":117.941914,\"lat\":31.678245},{\"lng\":117.942173,\"lat\":31.677269},{\"lng\":117.941555,\"lat\":31.673837},{\"lng\":117.941142,\"lat\":31.673091},{\"lng\":117.939194,\"lat\":31.67138},{\"lng\":117.93872,\"lat\":31.67086},{\"lng\":117.936016,\"lat\":31.666746},{\"lng\":117.934931,\"lat\":31.66503},{\"lng\":117.934526,\"lat\":31.664122},{\"lng\":117.933839,\"lat\":31.661312},{\"lng\":117.931479,\"lat\":31.65817},{\"lng\":117.930868,\"lat\":31.657083},{\"lng\":117.930524,\"lat\":31.65548},{\"lng\":117.929898,\"lat\":31.651245},{\"lng\":117.929691,\"lat\":31.648722},{\"lng\":117.929607,\"lat\":31.645692},{\"lng\":117.929668,\"lat\":31.644312},{\"lng\":117.930194,\"lat\":31.643055},{\"lng\":117.932867,\"lat\":31.64018},{\"lng\":117.933264,\"lat\":31.639267},{\"lng\":117.93473,\"lat\":31.637022},{\"lng\":117.935601,\"lat\":31.636512},{\"lng\":117.938171,\"lat\":31.635798},{\"lng\":117.938964,\"lat\":31.635158},{\"lng\":117.939237,\"lat\":31.632095},{\"lng\":117.939205,\"lat\":31.628987},{\"lng\":117.938615,\"lat\":31.626032},{\"lng\":117.935716,\"lat\":31.619812},{\"lng\":117.935256,\"lat\":31.619334},{\"lng\":117.934614,\"lat\":31.618121},{\"lng\":117.934505,\"lat\":31.616423},{\"lng\":117.935592,\"lat\":31.614095},{\"lng\":117.93557,\"lat\":31.613297},{\"lng\":117.935748,\"lat\":31.612942},{\"lng\":117.937124,\"lat\":31.61148},{\"lng\":117.937279,\"lat\":31.610992},{\"lng\":117.937191,\"lat\":31.61046},{\"lng\":117.936102,\"lat\":31.609549},{\"lng\":117.935326,\"lat\":31.60906},{\"lng\":117.932817,\"lat\":31.607948},{\"lng\":117.932417,\"lat\":31.607526},{\"lng\":117.932084,\"lat\":31.606904},{\"lng\":117.931839,\"lat\":31.605684},{\"lng\":117.932128,\"lat\":31.604464},{\"lng\":117.933859,\"lat\":31.601316},{\"lng\":117.934592,\"lat\":31.600386},{\"lng\":117.93538,\"lat\":31.598605},{\"lng\":117.935439,\"lat\":31.597658},{\"lng\":117.935291,\"lat\":31.594967},{\"lng\":117.935468,\"lat\":31.592719},{\"lng\":117.935646,\"lat\":31.591596},{\"lng\":117.936179,\"lat\":31.590591},{\"lng\":117.936238,\"lat\":31.589881},{\"lng\":117.936031,\"lat\":31.588934},{\"lng\":117.93532,\"lat\":31.587307},{\"lng\":117.934702,\"lat\":31.586892},{\"lng\":117.933258,\"lat\":31.586824},{\"lng\":117.931971,\"lat\":31.586911},{\"lng\":117.930572,\"lat\":31.587597},{\"lng\":117.929906,\"lat\":31.587552},{\"lng\":117.929596,\"lat\":31.58713},{\"lng\":117.929307,\"lat\":31.58571},{\"lng\":117.929263,\"lat\":31.584046},{\"lng\":117.929551,\"lat\":31.582849},{\"lng\":117.93015,\"lat\":31.581785},{\"lng\":117.930816,\"lat\":31.581142},{\"lng\":117.931815,\"lat\":31.580655},{\"lng\":117.932392,\"lat\":31.580611},{\"lng\":117.933436,\"lat\":31.580901},{\"lng\":117.934102,\"lat\":31.581035},{\"lng\":117.934546,\"lat\":31.581124},{\"lng\":117.934945,\"lat\":31.58097},{\"lng\":117.935345,\"lat\":31.580504},{\"lng\":117.935456,\"lat\":31.579284},{\"lng\":117.935412,\"lat\":31.578508},{\"lng\":117.935101,\"lat\":31.57782},{\"lng\":117.934545,\"lat\":31.576754},{\"lng\":117.933569,\"lat\":31.575777},{\"lng\":117.93177,\"lat\":31.5746},{\"lng\":117.930815,\"lat\":31.574155},{\"lng\":117.930188,\"lat\":31.573553},{\"lng\":117.929635,\"lat\":31.572527},{\"lng\":117.929477,\"lat\":31.571225},{\"lng\":117.929437,\"lat\":31.570042},{\"lng\":117.929043,\"lat\":31.569214},{\"lng\":117.928254,\"lat\":31.568227},{\"lng\":117.926439,\"lat\":31.567792},{\"lng\":117.925176,\"lat\":31.567988},{\"lng\":117.92415,\"lat\":31.568026},{\"lng\":117.923085,\"lat\":31.567789},{\"lng\":117.921981,\"lat\":31.566999},{\"lng\":117.921113,\"lat\":31.566841},{\"lng\":117.920166,\"lat\":31.567077},{\"lng\":117.919061,\"lat\":31.567313},{\"lng\":117.918234,\"lat\":31.567116},{\"lng\":117.917208,\"lat\":31.56676},{\"lng\":117.915335,\"lat\":31.565694},{\"lng\":117.914283,\"lat\":31.565431},{\"lng\":117.913915,\"lat\":31.565011},{\"lng\":117.913705,\"lat\":31.563748},{\"lng\":117.91381,\"lat\":31.562276},{\"lng\":117.913967,\"lat\":31.560593},{\"lng\":117.908658,\"lat\":31.558331},{\"lng\":117.907449,\"lat\":31.557595},{\"lng\":117.907239,\"lat\":31.556701},{\"lng\":117.908605,\"lat\":31.553652},{\"lng\":117.908657,\"lat\":31.5526},{\"lng\":117.908184,\"lat\":31.551706},{\"lng\":117.907396,\"lat\":31.550444},{\"lng\":117.907343,\"lat\":31.549077},{\"lng\":117.907711,\"lat\":31.547131},{\"lng\":117.908289,\"lat\":31.546868},{\"lng\":117.916806,\"lat\":31.550131},{\"lng\":117.918173,\"lat\":31.549974},{\"lng\":117.919803,\"lat\":31.549239},{\"lng\":117.92238,\"lat\":31.54598},{\"lng\":117.928053,\"lat\":31.538419},{\"lng\":117.930176,\"lat\":31.537585},{\"lng\":117.932607,\"lat\":31.537661},{\"lng\":117.935044,\"lat\":31.538467},{\"lng\":117.938768,\"lat\":31.53985},{\"lng\":117.941654,\"lat\":31.540654},{\"lng\":117.945217,\"lat\":31.540779},{\"lng\":117.947859,\"lat\":31.540473},{\"lng\":117.951038,\"lat\":31.539884},{\"lng\":117.951958,\"lat\":31.53863},{\"lng\":117.952149,\"lat\":31.537483},{\"lng\":117.952149,\"lat\":31.536969},{\"lng\":117.951744,\"lat\":31.536277},{\"lng\":117.950875,\"lat\":31.535202},{\"lng\":117.949252,\"lat\":31.533765},{\"lng\":117.948503,\"lat\":31.532795},{\"lng\":117.947693,\"lat\":31.531537},{\"lng\":117.946911,\"lat\":31.530646},{\"lng\":117.945028,\"lat\":31.528724},{\"lng\":117.940605,\"lat\":31.525772},{\"lng\":117.939552,\"lat\":31.525087},{\"lng\":117.93971,\"lat\":31.523983},{\"lng\":117.941816,\"lat\":31.522093},{\"lng\":117.946113,\"lat\":31.520645},{\"lng\":117.950988,\"lat\":31.520035},{\"lng\":117.952406,\"lat\":31.519836},{\"lng\":117.954632,\"lat\":31.518529},{\"lng\":117.956353,\"lat\":31.51571},{\"lng\":117.957145,\"lat\":31.509778},{\"lng\":117.958251,\"lat\":31.507401},{\"lng\":117.961595,\"lat\":31.505925},{\"lng\":117.964335,\"lat\":31.504985},{\"lng\":117.965758,\"lat\":31.503832},{\"lng\":117.966038,\"lat\":31.502522},{\"lng\":117.96561,\"lat\":31.499008},{\"lng\":117.965384,\"lat\":31.498217},{\"lng\":117.963689,\"lat\":31.497755},{\"lng\":117.960998,\"lat\":31.496614},{\"lng\":117.958582,\"lat\":31.495418},{\"lng\":117.955959,\"lat\":31.493763},{\"lng\":117.949569,\"lat\":31.490055},{\"lng\":117.948224,\"lat\":31.488971},{\"lng\":117.945542,\"lat\":31.487831},{\"lng\":117.943326,\"lat\":31.487555},{\"lng\":117.94098,\"lat\":31.487388},{\"lng\":117.938972,\"lat\":31.487508},{\"lng\":117.93629,\"lat\":31.487975},{\"lng\":117.934221,\"lat\":31.488555},{\"lng\":117.931617,\"lat\":31.490511},{\"lng\":117.93035,\"lat\":31.491889},{\"lng\":117.929997,\"lat\":31.492373},{\"lng\":117.928289,\"lat\":31.493262},{\"lng\":117.925935,\"lat\":31.495823},{\"lng\":117.922774,\"lat\":31.498395},{\"lng\":117.920681,\"lat\":31.500264},{\"lng\":117.917782,\"lat\":31.502374},{\"lng\":117.912973,\"lat\":31.503371},{\"lng\":117.907888,\"lat\":31.503455},{\"lng\":117.904695,\"lat\":31.504197},{\"lng\":117.900132,\"lat\":31.504044},{\"lng\":117.897443,\"lat\":31.503403},{\"lng\":117.893671,\"lat\":31.502323},{\"lng\":117.890159,\"lat\":31.501238},{\"lng\":117.886362,\"lat\":31.49901},{\"lng\":117.88286,\"lat\":31.498156},{\"lng\":117.874203,\"lat\":31.493725},{\"lng\":117.869897,\"lat\":31.492428},{\"lng\":117.864769,\"lat\":31.490454},{\"lng\":117.860715,\"lat\":31.488693},{\"lng\":117.858541,\"lat\":31.487355},{\"lng\":117.855579,\"lat\":31.486264},{\"lng\":117.853137,\"lat\":31.484706},{\"lng\":117.850167,\"lat\":31.483612},{\"lng\":117.846695,\"lat\":31.483217},{\"lng\":117.844565,\"lat\":31.483716},{\"lng\":117.840582,\"lat\":31.484935},{\"lng\":117.837924,\"lat\":31.485671},{\"lng\":117.835257,\"lat\":31.485949},{\"lng\":117.83098,\"lat\":31.486027},{\"lng\":117.827222,\"lat\":31.485635},{\"lng\":117.82427,\"lat\":31.484544},{\"lng\":117.821828,\"lat\":31.483214},{\"lng\":117.819377,\"lat\":31.481423},{\"lng\":117.815602,\"lat\":31.479654},{\"lng\":117.811055,\"lat\":31.479506},{\"lng\":117.807072,\"lat\":31.480726},{\"lng\":117.803624,\"lat\":31.481932},{\"lng\":117.799631,\"lat\":31.482689},{\"lng\":117.795897,\"lat\":31.483443},{\"lng\":117.791357,\"lat\":31.483521},{\"lng\":117.788411,\"lat\":31.483572},{\"lng\":117.785205,\"lat\":31.483627},{\"lng\":117.781174,\"lat\":31.482778},{\"lng\":117.778461,\"lat\":31.481218},{\"lng\":117.776796,\"lat\":31.478267},{\"lng\":117.77566,\"lat\":31.475305},{\"lng\":117.77422,\"lat\":31.470972},{\"lng\":117.773092,\"lat\":31.46824},{\"lng\":117.771714,\"lat\":31.466428},{\"lng\":117.768487,\"lat\":31.466024},{\"lng\":117.766657,\"lat\":31.467657},{\"lng\":117.764836,\"lat\":31.46998},{\"lng\":117.761921,\"lat\":31.471403},{\"lng\":117.757097,\"lat\":31.471708},{\"lng\":117.752793,\"lat\":31.470629},{\"lng\":117.750892,\"lat\":31.469282},{\"lng\":117.748965,\"lat\":31.467248},{\"lng\":117.746794,\"lat\":31.465676},{\"lng\":117.743547,\"lat\":31.464581},{\"lng\":117.740604,\"lat\":31.464397},{\"lng\":117.737668,\"lat\":31.464899},{\"lng\":117.733907,\"lat\":31.464955},{\"lng\":117.724586,\"lat\":31.467841},{\"lng\":117.720849,\"lat\":31.468809},{\"lng\":117.717086,\"lat\":31.468405},{\"lng\":117.713843,\"lat\":31.466847},{\"lng\":117.711122,\"lat\":31.46505},{\"lng\":117.708392,\"lat\":31.463022},{\"lng\":117.70674,\"lat\":31.461212},{\"lng\":117.705618,\"lat\":31.458707},{\"lng\":117.704757,\"lat\":31.456195},{\"lng\":117.702739,\"lat\":31.449347},{\"lng\":117.701843,\"lat\":31.445002},{\"lng\":117.700973,\"lat\":31.442264},{\"lng\":117.700373,\"lat\":31.439294},{\"lng\":117.699242,\"lat\":31.436326},{\"lng\":117.698129,\"lat\":31.434278},{\"lng\":117.696989,\"lat\":31.431541},{\"lng\":117.69638,\"lat\":31.428112},{\"lng\":117.69605,\"lat\":31.425138},{\"lng\":117.69571,\"lat\":31.421473},{\"lng\":117.695101,\"lat\":31.418502},{\"lng\":117.693666,\"lat\":31.413705},{\"lng\":117.692796,\"lat\":31.410736},{\"lng\":117.690569,\"lat\":31.40687},{\"lng\":117.687542,\"lat\":31.403242},{\"lng\":117.684236,\"lat\":31.398929},{\"lng\":117.680382,\"lat\":31.394625},{\"lng\":117.677103,\"lat\":31.391456},{\"lng\":117.674893,\"lat\":31.388504},{\"lng\":117.672945,\"lat\":31.385093},{\"lng\":117.6707,\"lat\":31.380306},{\"lng\":117.667916,\"lat\":31.375529},{\"lng\":117.665402,\"lat\":31.370519},{\"lng\":117.663706,\"lat\":31.366183},{\"lng\":117.662036,\"lat\":31.363453},{\"lng\":117.660609,\"lat\":31.359115},{\"lng\":117.658086,\"lat\":31.353649},{\"lng\":117.65612,\"lat\":31.349547},{\"lng\":117.654937,\"lat\":31.344059},{\"lng\":117.654311,\"lat\":31.34017},{\"lng\":117.652588,\"lat\":31.33446},{\"lng\":117.650875,\"lat\":31.32921},{\"lng\":117.649457,\"lat\":31.325786},{\"lng\":117.647752,\"lat\":31.320767},{\"lng\":117.646074,\"lat\":31.317119},{\"lng\":117.642996,\"lat\":31.310971},{\"lng\":117.640778,\"lat\":31.307331},{\"lng\":117.639092,\"lat\":31.303684},{\"lng\":117.636883,\"lat\":31.300505},{\"lng\":117.633867,\"lat\":31.297106},{\"lng\":117.629582,\"lat\":31.296705},{\"lng\":117.626932,\"lat\":31.298346},{\"lng\":117.621841,\"lat\":31.297729},{\"lng\":117.618322,\"lat\":31.295945},{\"lng\":117.616411,\"lat\":31.294137},{\"lng\":117.615004,\"lat\":31.290947},{\"lng\":117.613614,\"lat\":31.287755},{\"lng\":117.611669,\"lat\":31.284574},{\"lng\":117.609219,\"lat\":31.281257},{\"lng\":117.609195,\"lat\":31.281226},{\"lng\":117.609178,\"lat\":31.281201},{\"lng\":117.607813,\"lat\":31.279354},{\"lng\":117.602665,\"lat\":31.275758},{\"lng\":117.594907,\"lat\":31.275186},{\"lng\":117.590622,\"lat\":31.275021},{\"lng\":117.586597,\"lat\":31.273934},{\"lng\":117.581767,\"lat\":31.272863},{\"lng\":117.578273,\"lat\":31.271768},{\"lng\":117.572128,\"lat\":31.271038},{\"lng\":117.572094,\"lat\":31.27122},{\"lng\":117.571715,\"lat\":31.271821},{\"lng\":117.569826,\"lat\":31.274467},{\"lng\":117.566127,\"lat\":31.279719},{\"lng\":117.565734,\"lat\":31.280312},{\"lng\":117.564671,\"lat\":31.280747},{\"lng\":117.562152,\"lat\":31.281698},{\"lng\":117.545395,\"lat\":31.284376},{\"lng\":117.523891,\"lat\":31.287945},{\"lng\":117.523066,\"lat\":31.287947},{\"lng\":117.520158,\"lat\":31.287246},{\"lng\":117.516306,\"lat\":31.286073},{\"lng\":117.515795,\"lat\":31.286509},{\"lng\":117.516031,\"lat\":31.28777},{\"lng\":117.516699,\"lat\":31.28978},{\"lng\":117.516896,\"lat\":31.291042},{\"lng\":117.516896,\"lat\":31.293488},{\"lng\":117.517487,\"lat\":31.309384},{\"lng\":117.518157,\"lat\":31.324925},{\"lng\":117.518904,\"lat\":31.329932},{\"lng\":117.519179,\"lat\":31.331667},{\"lng\":117.519023,\"lat\":31.339912},{\"lng\":117.518709,\"lat\":31.34871},{\"lng\":117.519417,\"lat\":31.350562},{\"lng\":117.521107,\"lat\":31.352923},{\"lng\":117.525549,\"lat\":31.357842},{\"lng\":117.527868,\"lat\":31.360951},{\"lng\":117.529558,\"lat\":31.36426},{\"lng\":117.532821,\"lat\":31.369655},{\"lng\":117.53463,\"lat\":31.371819},{\"lng\":117.53695,\"lat\":31.375206},{\"lng\":117.538562,\"lat\":31.378041},{\"lng\":117.539702,\"lat\":31.379616},{\"lng\":117.541039,\"lat\":31.380796},{\"lng\":117.542691,\"lat\":31.381818},{\"lng\":117.543556,\"lat\":31.384695},{\"lng\":117.544303,\"lat\":31.38639},{\"lng\":117.54564,\"lat\":31.387728},{\"lng\":117.552012,\"lat\":31.395247},{\"lng\":117.553665,\"lat\":31.397097},{\"lng\":117.554924,\"lat\":31.399028},{\"lng\":117.555553,\"lat\":31.40159},{\"lng\":117.555043,\"lat\":31.408021},{\"lng\":117.554571,\"lat\":31.413938},{\"lng\":117.554374,\"lat\":31.418632},{\"lng\":117.555044,\"lat\":31.421274},{\"lng\":117.555713,\"lat\":31.423954},{\"lng\":117.555755,\"lat\":31.425162},{\"lng\":117.555165,\"lat\":31.428003},{\"lng\":117.553928,\"lat\":31.430312},{\"lng\":117.554054,\"lat\":31.431102},{\"lng\":117.553587,\"lat\":31.434778},{\"lng\":117.552921,\"lat\":31.441434},{\"lng\":117.550298,\"lat\":31.443997},{\"lng\":117.548462,\"lat\":31.445862},{\"lng\":117.546402,\"lat\":31.449335},{\"lng\":117.544325,\"lat\":31.452806},{\"lng\":117.541729,\"lat\":31.45652},{\"lng\":117.538345,\"lat\":31.46093},{\"lng\":117.534676,\"lat\":31.464428},{\"lng\":117.531007,\"lat\":31.468387},{\"lng\":117.526033,\"lat\":31.473284},{\"lng\":117.521872,\"lat\":31.479313},{\"lng\":117.518766,\"lat\":31.484179},{\"lng\":117.514052,\"lat\":31.488843},{\"lng\":117.51118,\"lat\":31.49233},{\"lng\":117.506475,\"lat\":31.49768},{\"lng\":117.50439,\"lat\":31.500466},{\"lng\":117.500455,\"lat\":31.504201},{\"lng\":117.496225,\"lat\":31.506564},{\"lng\":117.492531,\"lat\":31.508687},{\"lng\":117.489096,\"lat\":31.510806},{\"lng\":117.485134,\"lat\":31.512936},{\"lng\":117.48118,\"lat\":31.515981},{\"lng\":117.479363,\"lat\":31.519218},{\"lng\":117.476248,\"lat\":31.523854},{\"lng\":117.473678,\"lat\":31.529167},{\"lng\":117.470562,\"lat\":31.53403},{\"lng\":117.465845,\"lat\":31.538916},{\"lng\":117.460893,\"lat\":31.545643},{\"lng\":117.458599,\"lat\":31.552094},{\"lng\":117.453324,\"lat\":31.556074},{\"lng\":117.447477,\"lat\":31.558227},{\"lng\":117.446511,\"lat\":31.55902},{\"lng\":117.441883,\"lat\":31.559271},{\"lng\":117.438405,\"lat\":31.560902},{\"lng\":117.436781,\"lat\":31.562143},{\"lng\":117.436086,\"lat\":31.56377},{\"lng\":117.436472,\"lat\":31.565937},{\"lng\":117.436705,\"lat\":31.56857},{\"lng\":117.437183,\"lat\":31.572046},{\"lng\":117.440355,\"lat\":31.572028},{\"lng\":117.442539,\"lat\":31.574061},{\"lng\":117.444992,\"lat\":31.575858},{\"lng\":117.448224,\"lat\":31.577183},{\"lng\":117.451438,\"lat\":31.577364},{\"lng\":117.45492,\"lat\":31.577084},{\"lng\":117.459753,\"lat\":31.577924},{\"lng\":117.464351,\"lat\":31.580828},{\"lng\":117.469,\"lat\":31.586028},{\"lng\":117.469321,\"lat\":31.588773},{\"lng\":117.472896,\"lat\":31.594215},{\"lng\":117.47648,\"lat\":31.599199},{\"lng\":117.481941,\"lat\":31.60507},{\"lng\":117.487393,\"lat\":31.610482},{\"lng\":117.491762,\"lat\":31.61522},{\"lng\":117.496703,\"lat\":31.621785},{\"lng\":117.505493,\"lat\":31.633783},{\"lng\":117.514283,\"lat\":31.645553},{\"lng\":117.520028,\"lat\":31.651643},{\"lng\":117.531242,\"lat\":31.664291},{\"lng\":117.534513,\"lat\":31.666756},{\"lng\":117.536694,\"lat\":31.668783},{\"lng\":117.540243,\"lat\":31.672389},{\"lng\":117.541905,\"lat\":31.674881},{\"lng\":117.543333,\"lat\":31.679901},{\"lng\":117.543654,\"lat\":31.682417},{\"lng\":117.545316,\"lat\":31.685139},{\"lng\":117.54858,\"lat\":31.687375},{\"lng\":117.54968,\"lat\":31.689193},{\"lng\":117.551914,\"lat\":31.693279},{\"lng\":117.552763,\"lat\":31.695787},{\"lng\":117.552036,\"lat\":31.699463},{\"lng\":117.54943,\"lat\":31.70363},{\"lng\":117.547647,\"lat\":31.708474},{\"lng\":117.54853,\"lat\":31.712354},{\"lng\":117.551241,\"lat\":31.713686},{\"lng\":117.554972,\"lat\":31.712478},{\"lng\":117.557613,\"lat\":31.7106},{\"lng\":117.559449,\"lat\":31.708512},{\"lng\":117.562074,\"lat\":31.705718},{\"lng\":117.565253,\"lat\":31.703836},{\"lng\":117.568198,\"lat\":31.703788},{\"lng\":117.570902,\"lat\":31.704663},{\"lng\":117.572046,\"lat\":31.708541},{\"lng\":117.571033,\"lat\":31.711535},{\"lng\":117.568719,\"lat\":31.716383},{\"lng\":117.569335,\"lat\":31.720499},{\"lng\":117.572065,\"lat\":31.722747},{\"lng\":117.574275,\"lat\":31.725921},{\"lng\":117.573253,\"lat\":31.728457},{\"lng\":117.57145,\"lat\":31.73215},{\"lng\":117.570974,\"lat\":31.735367},{\"lng\":117.570784,\"lat\":31.739034},{\"lng\":117.572474,\"lat\":31.743135},{\"lng\":117.577389,\"lat\":31.747412},{\"lng\":117.582556,\"lat\":31.750768},{\"lng\":117.588289,\"lat\":31.755266},{\"lng\":117.593181,\"lat\":31.758399},{\"lng\":117.599976,\"lat\":31.761509},{\"lng\":117.606729,\"lat\":31.763702},{\"lng\":117.612451,\"lat\":31.766828},{\"lng\":117.618262,\"lat\":31.774994},{\"lng\":117.619392,\"lat\":31.777499},{\"lng\":117.622988,\"lat\":31.78272},{\"lng\":117.627333,\"lat\":31.784035},{\"lng\":117.633842,\"lat\":31.786923},{\"lng\":117.636346,\"lat\":31.790329},{\"lng\":117.638041,\"lat\":31.794202},{\"lng\":117.63732,\"lat\":31.798566},{\"lng\":117.634053,\"lat\":31.809606},{\"lng\":117.635522,\"lat\":31.815773},{\"lng\":117.637783,\"lat\":31.820783},{\"lng\":117.640565,\"lat\":31.824868},{\"lng\":117.643599,\"lat\":31.828496},{\"lng\":117.646921,\"lat\":31.832801},{\"lng\":117.651609,\"lat\":31.837782},{\"lng\":117.655235,\"lat\":31.843462},{\"lng\":117.658532,\"lat\":31.846855},{\"lng\":117.662394,\"lat\":31.85093},{\"lng\":117.667865,\"lat\":31.854522},{\"lng\":117.672789,\"lat\":31.857894},{\"lng\":117.676408,\"lat\":31.863117},{\"lng\":117.678347,\"lat\":31.865384},{\"lng\":117.680044,\"lat\":31.869028},{\"lng\":117.681714,\"lat\":31.871754},{\"lng\":117.68368,\"lat\":31.875624},{\"lng\":117.685133,\"lat\":31.880186},{\"lng\":117.687161,\"lat\":31.886803},{\"lng\":117.689431,\"lat\":31.892042},{\"lng\":117.692493,\"lat\":31.896582},{\"lng\":117.697164,\"lat\":31.900876},{\"lng\":117.702625,\"lat\":31.903782},{\"lng\":117.708625,\"lat\":31.906907},{\"lng\":117.709738,\"lat\":31.908723},{\"lng\":117.71172,\"lat\":31.91305},{\"lng\":117.713442,\"lat\":31.918066},{\"lng\":117.716815,\"lat\":31.924205},{\"lng\":117.719067,\"lat\":31.928753},{\"lng\":117.72244,\"lat\":31.934893},{\"lng\":117.72416,\"lat\":31.939449},{\"lng\":117.728323,\"lat\":31.944888},{\"lng\":117.732172,\"lat\":31.948268},{\"lng\":117.735204,\"lat\":31.951889},{\"lng\":117.737141,\"lat\":31.953696},{\"lng\":117.738566,\"lat\":31.957568},{\"lng\":117.738922,\"lat\":31.961228},{\"lng\":117.739322,\"lat\":31.967405},{\"lng\":117.742614,\"lat\":31.969878},{\"lng\":117.745887,\"lat\":31.971891},{\"lng\":117.750002,\"lat\":31.975036},{\"lng\":117.751912,\"lat\":31.976609},{\"lng\":117.75652,\"lat\":31.977683},{\"lng\":117.759462,\"lat\":31.976492},{\"lng\":117.761856,\"lat\":31.975307},{\"lng\":117.766957,\"lat\":31.974997},{\"lng\":117.771016,\"lat\":31.975618},{\"lng\":117.775343,\"lat\":31.976924},{\"lng\":117.778629,\"lat\":31.979158},{\"lng\":117.780562,\"lat\":31.981421},{\"lng\":117.784125,\"lat\":31.984336},{\"lng\":117.788788,\"lat\":31.988152},{\"lng\":117.795867,\"lat\":31.992384},{\"lng\":117.804582,\"lat\":31.997919},{\"lng\":117.810931,\"lat\":32.00226},{\"lng\":117.814543,\"lat\":31.999568},{\"lng\":117.817316,\"lat\":31.997936},{\"lng\":117.817817,\"lat\":31.997699},{\"lng\":117.823982,\"lat\":31.996239},{\"lng\":117.829469,\"lat\":31.99478},{\"lng\":117.830059,\"lat\":31.994335},{\"lng\":117.830472,\"lat\":31.993624},{\"lng\":117.832006,\"lat\":31.990724},{\"lng\":117.832516,\"lat\":31.989511},{\"lng\":117.832724,\"lat\":31.989157},{\"lng\":117.83347,\"lat\":31.988773},{\"lng\":117.833647,\"lat\":31.988537},{\"lng\":117.833874,\"lat\":31.987922},{\"lng\":117.834296,\"lat\":31.987508},{\"lng\":117.834907,\"lat\":31.986669},{\"lng\":117.834999,\"lat\":31.986344},{\"lng\":117.835044,\"lat\":31.985423},{\"lng\":117.835186,\"lat\":31.984782},{\"lng\":117.835508,\"lat\":31.984248},{\"lng\":117.835597,\"lat\":31.983535},{\"lng\":117.835497,\"lat\":31.98303},{\"lng\":117.834544,\"lat\":31.982678},{\"lng\":117.834247,\"lat\":31.982455},{\"lng\":117.834149,\"lat\":31.982194},{\"lng\":117.834242,\"lat\":31.981896},{\"lng\":117.83562,\"lat\":31.98028},{\"lng\":117.836095,\"lat\":31.979076},{\"lng\":117.836714,\"lat\":31.978738},{\"lng\":117.837871,\"lat\":31.978322},{\"lng\":117.838879,\"lat\":31.977836},{\"lng\":117.839739,\"lat\":31.977161},{\"lng\":117.840387,\"lat\":31.976498},{\"lng\":117.840744,\"lat\":31.976287},{\"lng\":117.841629,\"lat\":31.976109},{\"lng\":117.841873,\"lat\":31.97626},{\"lng\":117.841911,\"lat\":31.976945},{\"lng\":117.842143,\"lat\":31.97697},{\"lng\":117.842498,\"lat\":31.976579},{\"lng\":117.842732,\"lat\":31.975639},{\"lng\":117.84294,\"lat\":31.975232},{\"lng\":117.843951,\"lat\":31.975043},{\"lng\":117.844476,\"lat\":31.974759},{\"lng\":117.844685,\"lat\":31.97455},{\"lng\":117.844714,\"lat\":31.974198},{\"lng\":117.84459,\"lat\":31.973406},{\"lng\":117.84431,\"lat\":31.972777},{\"lng\":117.844129,\"lat\":31.972571},{\"lng\":117.843622,\"lat\":31.972504},{\"lng\":117.843441,\"lat\":31.972352},{\"lng\":117.84335,\"lat\":31.971559},{\"lng\":117.843101,\"lat\":31.970975},{\"lng\":117.84269,\"lat\":31.971006},{\"lng\":117.841537,\"lat\":31.971881},{\"lng\":117.841115,\"lat\":31.971884},{\"lng\":117.840752,\"lat\":31.971428},{\"lng\":117.840417,\"lat\":31.970592},{\"lng\":117.840511,\"lat\":31.970393},{\"lng\":117.841243,\"lat\":31.969747},{\"lng\":117.842707,\"lat\":31.969401},{\"lng\":117.843389,\"lat\":31.969044},{\"lng\":117.843588,\"lat\":31.968762},{\"lng\":117.843885,\"lat\":31.96784},{\"lng\":117.846102,\"lat\":31.963368},{\"lng\":117.846163,\"lat\":31.963088},{\"lng\":117.846422,\"lat\":31.962581},{\"lng\":117.846601,\"lat\":31.96248},{\"lng\":117.847042,\"lat\":31.962323},{\"lng\":117.848856,\"lat\":31.962199},{\"lng\":117.849423,\"lat\":31.961888},{\"lng\":117.850369,\"lat\":31.961555},{\"lng\":117.850907,\"lat\":31.96147},{\"lng\":117.852284,\"lat\":31.962017},{\"lng\":117.853177,\"lat\":31.961559},{\"lng\":117.853405,\"lat\":31.961097},{\"lng\":117.853371,\"lat\":31.960944},{\"lng\":117.853041,\"lat\":31.960541},{\"lng\":117.853011,\"lat\":31.959595},{\"lng\":117.853347,\"lat\":31.958375},{\"lng\":117.854449,\"lat\":31.95768},{\"lng\":117.855275,\"lat\":31.956853},{\"lng\":117.855747,\"lat\":31.956569},{\"lng\":117.856254,\"lat\":31.95652},{\"lng\":117.856516,\"lat\":31.956364},{\"lng\":117.856576,\"lat\":31.955976},{\"lng\":117.856455,\"lat\":31.955446},{\"lng\":117.856683,\"lat\":31.95511},{\"lng\":117.858023,\"lat\":31.954999},{\"lng\":117.858527,\"lat\":31.954797},{\"lng\":117.859546,\"lat\":31.955393},{\"lng\":117.86041,\"lat\":31.955259},{\"lng\":117.861313,\"lat\":31.955865},{\"lng\":117.861492,\"lat\":31.955863},{\"lng\":117.86187,\"lat\":31.95568},{\"lng\":117.863207,\"lat\":31.955317},{\"lng\":117.865647,\"lat\":31.954323},{\"lng\":117.866035,\"lat\":31.95404},{\"lng\":117.866146,\"lat\":31.953481},{\"lng\":117.866025,\"lat\":31.953049},{\"lng\":117.865811,\"lat\":31.952744},{\"lng\":117.86545,\"lat\":31.952494},{\"lng\":117.864677,\"lat\":31.952194},{\"lng\":117.864043,\"lat\":31.952154},{\"lng\":117.86381,\"lat\":31.952003},{\"lng\":117.863711,\"lat\":31.951571},{\"lng\":117.863738,\"lat\":31.951138},{\"lng\":117.864028,\"lat\":31.950496},{\"lng\":117.86459,\"lat\":31.949626},{\"lng\":117.864341,\"lat\":31.949023},{\"lng\":117.863927,\"lat\":31.94872},{\"lng\":117.863829,\"lat\":31.948442},{\"lng\":117.863954,\"lat\":31.948206},{\"lng\":117.86451,\"lat\":31.94785},{\"lng\":117.865224,\"lat\":31.947538},{\"lng\":117.865795,\"lat\":31.947632},{\"lng\":117.866241,\"lat\":31.947881},{\"lng\":117.866631,\"lat\":31.94786},{\"lng\":117.867188,\"lat\":31.94762},{\"lng\":117.86736,\"lat\":31.946808},{\"lng\":117.868602,\"lat\":31.945292},{\"lng\":117.868415,\"lat\":31.944536},{\"lng\":117.867397,\"lat\":31.944003},{\"lng\":117.866709,\"lat\":31.943811},{\"lng\":117.866263,\"lat\":31.943562},{\"lng\":117.86623,\"lat\":31.943328},{\"lng\":117.866374,\"lat\":31.942948},{\"lng\":117.866932,\"lat\":31.942862},{\"lng\":117.866928,\"lat\":31.942412},{\"lng\":117.866724,\"lat\":31.94208},{\"lng\":117.865969,\"lat\":31.941446},{\"lng\":117.865378,\"lat\":31.941433},{\"lng\":117.865133,\"lat\":31.941227},{\"lng\":117.865046,\"lat\":31.940921},{\"lng\":117.865242,\"lat\":31.940415},{\"lng\":117.865986,\"lat\":31.939868},{\"lng\":117.866376,\"lat\":31.93982},{\"lng\":117.86856,\"lat\":31.940892},{\"lng\":117.868918,\"lat\":31.940836},{\"lng\":117.869295,\"lat\":31.940454},{\"lng\":117.869076,\"lat\":31.93959},{\"lng\":117.869167,\"lat\":31.939256},{\"lng\":117.869609,\"lat\":31.939108},{\"lng\":117.87,\"lat\":31.93915},{\"lng\":117.870361,\"lat\":31.939426},{\"lng\":117.870763,\"lat\":31.940523},{\"lng\":117.87129,\"lat\":31.940537},{\"lng\":117.871415,\"lat\":31.940337},{\"lng\":117.871527,\"lat\":31.939849},{\"lng\":117.871426,\"lat\":31.939237},{\"lng\":117.871275,\"lat\":31.938887},{\"lng\":117.870829,\"lat\":31.938611},{\"lng\":117.870237,\"lat\":31.93849},{\"lng\":117.868583,\"lat\":31.937764},{\"lng\":117.868528,\"lat\":31.937512},{\"lng\":117.869237,\"lat\":31.936113},{\"lng\":117.869488,\"lat\":31.93516},{\"lng\":117.869685,\"lat\":31.933662},{\"lng\":117.869587,\"lat\":31.933401},{\"lng\":117.869406,\"lat\":31.933249},{\"lng\":117.869079,\"lat\":31.933207},{\"lng\":117.868523,\"lat\":31.933563},{\"lng\":117.86766,\"lat\":31.933876},{\"lng\":117.867354,\"lat\":31.933879},{\"lng\":117.866908,\"lat\":31.933576},{\"lng\":117.866906,\"lat\":31.933378},{\"lng\":117.867147,\"lat\":31.933096},{\"lng\":117.868711,\"lat\":31.93229},{\"lng\":117.869459,\"lat\":31.932104},{\"lng\":117.869932,\"lat\":31.931901},{\"lng\":117.869993,\"lat\":31.931721},{\"lng\":117.869865,\"lat\":31.931514},{\"lng\":117.869304,\"lat\":31.931393},{\"lng\":117.868378,\"lat\":31.93158},{\"lng\":117.868165,\"lat\":31.931429},{\"lng\":117.868046,\"lat\":31.931105},{\"lng\":117.867882,\"lat\":31.929349},{\"lng\":117.868121,\"lat\":31.928986},{\"lng\":117.868448,\"lat\":31.928938},{\"lng\":117.86961,\"lat\":31.929055},{\"lng\":117.869968,\"lat\":31.928998},{\"lng\":117.870658,\"lat\":31.929479},{\"lng\":117.870985,\"lat\":31.929477},{\"lng\":117.871395,\"lat\":31.929239},{\"lng\":117.871834,\"lat\":31.928829},{\"lng\":117.872042,\"lat\":31.928548},{\"lng\":117.872216,\"lat\":31.927934},{\"lng\":117.872604,\"lat\":31.927705},{\"lng\":117.873469,\"lat\":31.927572},{\"lng\":117.873967,\"lat\":31.928044},{\"lng\":117.875021,\"lat\":31.928758},{\"lng\":117.876216,\"lat\":31.928974},{\"lng\":117.877047,\"lat\":31.928688},{\"lng\":117.877501,\"lat\":31.928684},{\"lng\":117.877618,\"lat\":31.92881},{\"lng\":117.877328,\"lat\":31.929452},{\"lng\":117.877563,\"lat\":31.929676},{\"lng\":117.87807,\"lat\":31.929798},{\"lng\":117.878851,\"lat\":31.929738},{\"lng\":117.879501,\"lat\":31.929282},{\"lng\":117.879877,\"lat\":31.928846},{\"lng\":117.880229,\"lat\":31.928104},{\"lng\":117.88083,\"lat\":31.928018},{\"lng\":117.881128,\"lat\":31.928223},{\"lng\":117.881193,\"lat\":31.928421},{\"lng\":117.880952,\"lat\":31.928603},{\"lng\":117.881165,\"lat\":31.928854},{\"lng\":117.881525,\"lat\":31.928878},{\"lng\":117.881935,\"lat\":31.928775},{\"lng\":117.882179,\"lat\":31.928801},{\"lng\":117.883238,\"lat\":31.928152},{\"lng\":117.884813,\"lat\":31.927202},{\"lng\":117.885675,\"lat\":31.926808},{\"lng\":117.886086,\"lat\":31.926759},{\"lng\":117.886541,\"lat\":31.926783},{\"lng\":117.887103,\"lat\":31.927031},{\"lng\":117.887974,\"lat\":31.927583},{\"lng\":117.888546,\"lat\":31.927786},{\"lng\":117.888925,\"lat\":31.92763},{\"lng\":117.891403,\"lat\":31.927223},{\"lng\":117.891963,\"lat\":31.927219},{\"lng\":117.893408,\"lat\":31.927766},{\"lng\":117.898333,\"lat\":31.929183},{\"lng\":117.8992,\"lat\":31.929222},{\"lng\":117.900027,\"lat\":31.929143},{\"lng\":117.901564,\"lat\":31.928354},{\"lng\":117.910904,\"lat\":31.923938},{\"lng\":117.913309,\"lat\":31.922677},{\"lng\":117.914137,\"lat\":31.922323},{\"lng\":117.915162,\"lat\":31.922205},{\"lng\":117.926286,\"lat\":31.921975},{\"lng\":117.92743,\"lat\":31.921818},{\"lng\":117.928495,\"lat\":31.921385},{\"lng\":117.929679,\"lat\":31.920835},{\"lng\":117.948352,\"lat\":31.910492},{\"lng\":117.949142,\"lat\":31.909824},{\"lng\":117.950011,\"lat\":31.908603},{\"lng\":117.951848,\"lat\":31.906244}]', null, null, '巢湖市', null, '1');
INSERT INTO `fence` VALUES ('10', '1', '1', '1', null, '1', '[{\"lng\":116.240235,\"lat\":39.865213},{\"lng\":116.187707,\"lat\":39.958962},{\"lng\":116.349755,\"lat\":40.033132},{\"lng\":116.466485,\"lat\":39.908416},{\"lng\":116.272164,\"lat\":39.8494},{\"lng\":116.272164,\"lat\":39.8494}]', null, null, '1', '1', null);

-- ----------------------------
-- Table structure for fence_in_out
-- ----------------------------
DROP TABLE IF EXISTS `fence_in_out`;
CREATE TABLE `fence_in_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `region_code` varchar(64) DEFAULT NULL COMMENT '区划代码',
  `fence_id` int(11) DEFAULT NULL COMMENT '围栏id',
  `vehicle_no` varchar(32) DEFAULT NULL COMMENT '车辆号牌',
  `vehicle_color` varchar(32) DEFAULT NULL COMMENT '车辆颜色',
  `driver_name` varchar(64) DEFAULT NULL COMMENT '司机姓名',
  `trigger_type` char(1) DEFAULT NULL COMMENT '触发类型。进-I，出-O',
  `trigger_address` varchar(256) DEFAULT NULL COMMENT '触发地址',
  `trigger_time` datetime DEFAULT NULL COMMENT '触发时间',
  `duration` int(11) DEFAULT NULL COMMENT '持续时长，单位分钟',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fence_in_out
-- ----------------------------

-- ----------------------------
-- Table structure for gbt2260
-- ----------------------------
DROP TABLE IF EXISTS `gbt2260`;
CREATE TABLE `gbt2260` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gbt2260
-- ----------------------------

-- ----------------------------
-- Table structure for gm_company_business_license
-- ----------------------------
DROP TABLE IF EXISTS `gm_company_business_license`;
CREATE TABLE `gm_company_business_license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(32) DEFAULT NULL,
  `address_code` int(11) DEFAULT NULL,
  `address_name` varchar(64) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `operating_state` varchar(8) DEFAULT NULL,
  `economic_nature` varchar(8) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `operation_area` varchar(128) DEFAULT NULL,
  `operation_area2` varchar(128) DEFAULT NULL,
  `certificate` varchar(64) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `stop_date` int(11) DEFAULT NULL,
  `organization` varchar(256) DEFAULT NULL,
  `certify_date` int(11) DEFAULT NULL,
  `type` varbinary(32) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_company_business_license
-- ----------------------------

-- ----------------------------
-- Table structure for gm_driver_license
-- ----------------------------
DROP TABLE IF EXISTS `gm_driver_license`;
CREATE TABLE `gm_driver_license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` int(11) DEFAULT NULL,
  `driver_name` varchar(64) DEFAULT NULL,
  `driver_gender` int(11) DEFAULT NULL,
  `document_type` int(11) DEFAULT NULL,
  `id_number` varchar(32) DEFAULT NULL,
  `nation` varchar(32) DEFAULT NULL,
  `driver_phone` varchar(32) DEFAULT NULL,
  `driver_address` varchar(256) DEFAULT NULL,
  `driver_education` varchar(64) DEFAULT NULL,
  `technical_title` varchar(32) DEFAULT NULL,
  `employee_status` varchar(32) DEFAULT NULL,
  `household_registration` varchar(32) DEFAULT NULL,
  `certificate_no` varchar(128) DEFAULT NULL,
  `driver_birthday` int(11) DEFAULT NULL,
  `get_driver_license_date` date DEFAULT NULL,
  `network_car_issue_date` int(11) DEFAULT NULL,
  `network_car_proof_on` int(11) DEFAULT NULL,
  `network_car_proof_off` int(11) DEFAULT NULL,
  `network_car_issue_organization` varchar(256) DEFAULT NULL,
  `network_car_issue_organization_code` varchar(32) DEFAULT NULL,
  `adhere_address` varchar(32) DEFAULT NULL,
  `card_type` varchar(32) DEFAULT NULL,
  `ic_card` varchar(32) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `emergency_contact` varchar(64) DEFAULT NULL,
  `emergency_contact_phone` varchar(32) DEFAULT NULL,
  `emergency_contact_address` varchar(256) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='驾驶员基本信息';

-- ----------------------------
-- Records of gm_driver_license
-- ----------------------------

-- ----------------------------
-- Table structure for gm_vehicle_license
-- ----------------------------
DROP TABLE IF EXISTS `gm_vehicle_license`;
CREATE TABLE `gm_vehicle_license` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` int(11) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `plate_color` varchar(32) DEFAULT NULL,
  `brand` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `engine_id` varchar(32) DEFAULT NULL,
  `vIN` varchar(17) DEFAULT NULL,
  `vehicle_type` varchar(64) DEFAULT NULL,
  `vehicle_type_code` varchar(32) DEFAULT NULL,
  `delivery_date` int(11) DEFAULT NULL,
  `certify_dateA` int(11) DEFAULT NULL,
  `fuel_type` varchar(32) DEFAULT NULL,
  `wheelbase` decimal(4,2) DEFAULT NULL,
  `commander` decimal(4,2) DEFAULT NULL,
  `width` decimal(4,2) DEFAULT NULL,
  `height` decimal(4,2) DEFAULT NULL,
  `power` decimal(4,2) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `gPS_brand` varchar(256) DEFAULT NULL,
  `gPS_model` varchar(64) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `trans_area` varchar(256) DEFAULT NULL,
  `certificate` varchar(64) DEFAULT NULL,
  `trans_agency` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_vehicle_license
-- ----------------------------

-- ----------------------------
-- Table structure for jtt415
-- ----------------------------
DROP TABLE IF EXISTS `jtt415`;
CREATE TABLE `jtt415` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jtt415
-- ----------------------------

-- ----------------------------
-- Table structure for jtt697
-- ----------------------------
DROP TABLE IF EXISTS `jtt697`;
CREATE TABLE `jtt697` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jtt697
-- ----------------------------

-- ----------------------------
-- Table structure for jtt808
-- ----------------------------
DROP TABLE IF EXISTS `jtt808`;
CREATE TABLE `jtt808` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jtt808
-- ----------------------------

-- ----------------------------
-- Table structure for operate_depart_arrive
-- ----------------------------
DROP TABLE IF EXISTS `operate_depart_arrive`;
CREATE TABLE `operate_depart_arrive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `on_area` int(11) DEFAULT NULL COMMENT '见GB/T 2260',
  `driver_name` varchar(64) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `fare_type` varchar(16) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `book_dep_time` bigint(20) DEFAULT NULL,
  `wait_time` bigint(20) DEFAULT NULL COMMENT '单位：秒',
  `dep_longitude` double DEFAULT NULL COMMENT '单位：1*10-6度',
  `dep_latitude` double DEFAULT NULL COMMENT '单位：1*10-6度',
  `dep_area` varchar(128) DEFAULT NULL,
  `dep_time` bigint(20) DEFAULT NULL COMMENT 'YYYYMMDDhhmmss',
  `encrypt` int(11) DEFAULT NULL COMMENT '1：GCJ-02 测绘局标准\r\n            2：WGS84 GPS标准\r\n            3：BD-09 百度标准\r\n            4：CGCS2000 北斗标准\r\n            0：其他\r\n            ',
  `dest_longitude` double DEFAULT NULL,
  `dest_latitude` double DEFAULT NULL,
  `dest_area` varchar(128) DEFAULT NULL,
  `dest_time` bigint(20) DEFAULT NULL,
  `book_model` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `drive_mile` decimal(5,2) DEFAULT NULL,
  `drive_time` int(11) DEFAULT NULL,
  `wait_mile` decimal(5,2) DEFAULT NULL COMMENT '单位：km',
  `fact_price` decimal(5,2) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `cash_price` decimal(5,2) DEFAULT NULL,
  `line_name` varchar(64) DEFAULT NULL,
  `line_price` decimal(5,2) DEFAULT NULL,
  `pos_name` varchar(64) DEFAULT NULL,
  `pos_price` decimal(5,2) DEFAULT NULL,
  `benfit_price` decimal(5,2) DEFAULT NULL,
  `book_tip` decimal(5,2) DEFAULT NULL,
  `passenger_tip` int(11) DEFAULT NULL,
  `peak_up_price` decimal(5,2) DEFAULT NULL,
  `night_up_price` decimal(5,2) DEFAULT NULL,
  `far_up_price` decimal(5,2) DEFAULT NULL,
  `other_up_price` decimal(5,2) DEFAULT NULL,
  `pay_state` varchar(32) DEFAULT NULL COMMENT '数据取值有效范围：\r\n            0：未结算\r\n            1：已结算\r\n            2：未知\r\n            ',
  `pay_time` bigint(20) DEFAULT NULL,
  `order_match_time` bigint(20) DEFAULT NULL,
  `invoice_status` varchar(32) DEFAULT NULL COMMENT '数据取值有效范围：\r\n            0：未开票\r\n            1：已开票\r\n            2：未知\r\n            ',
  `begin_beyond_operate` int(11) DEFAULT NULL,
  `end_beyond_operate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='经营信息';

-- ----------------------------
-- Records of operate_depart_arrive
-- ----------------------------
INSERT INTO `operate_depart_arrive` VALUES ('1', '1', '1', '340100', '张三', '1', '1', '300', '20170430101010', '10', '56', '78', '340100', '56', '1', '57', '80', '340100', '20174200', '1', '1', '5.00', '30', '3.00', '2.00', '4.00', '7.00', '1', '6.00', '合肥市', '7.00', '7.00', '2.00', '1', '3.00', '3.00', '3.00', '3.00', '1', '20170430', '20170430', '1', '1', '1');

-- ----------------------------
-- Table structure for operate_log_in_out
-- ----------------------------
DROP TABLE IF EXISTS `operate_log_in_out`;
CREATE TABLE `operate_log_in_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `login_time` bigint(20) DEFAULT NULL,
  `in_longitude` double DEFAULT NULL COMMENT '单位：1*10-6度',
  `in_latitude` double DEFAULT NULL COMMENT '单位：1*10-6度',
  `in_encrypt` int(11) DEFAULT NULL COMMENT '1：GCJ-02 测绘局标准\r\n            2：WGS84 GPS标准\r\n            3：BD-09 百度标准\r\n            4：CGCS2000 北斗标准\r\n            0：其他',
  `logout_time` bigint(20) DEFAULT NULL,
  `out_longitude` double DEFAULT NULL,
  `out_latitude` double DEFAULT NULL,
  `out_encrypt` int(11) DEFAULT NULL COMMENT '1：GCJ-02 测绘局标准\r\n            2：WGS84 GPS标准\r\n            3：BD-09 百度标准\r\n            4：CGCS2000 北斗标准\r\n            0：其他\r\n            ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车辆经营上下线信息';

-- ----------------------------
-- Records of operate_log_in_out
-- ----------------------------
INSERT INTO `operate_log_in_out` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `depart_time` bigint(20) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `passenger_note` varchar(128) DEFAULT NULL,
  `departure` varchar(128) DEFAULT NULL,
  `dep_longitude` double DEFAULT NULL,
  `dep_latitude` double DEFAULT NULL,
  `destination` varchar(128) DEFAULT NULL,
  `dest_longitude` double DEFAULT NULL,
  `dest_latitude` double DEFAULT NULL,
  `encrypt` int(11) DEFAULT NULL,
  `fare_type` varchar(16) DEFAULT NULL,
  `longitude` double DEFAULT NULL COMMENT '单位：1*10-6度',
  `latitude` double DEFAULT NULL,
  `license_id` varchar(32) DEFAULT NULL,
  `driver_phone` varchar(32) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `distribute_time` bigint(20) DEFAULT NULL,
  `cancel_time` bigint(20) DEFAULT NULL,
  `operator` varchar(64) DEFAULT NULL,
  `cancel_type_code` varchar(32) DEFAULT NULL,
  `cancel_reason` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单详情';

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('1', '1', '1', '1', '1', '20170430', '快点来', '1', '56', '34', '合肥市', '60', '37', '1', '1', '60', '38', '1', '01089898989', '300', '20170430', '20170510', '1', '1', '车太远');

-- ----------------------------
-- Table structure for passenger_complaint
-- ----------------------------
DROP TABLE IF EXISTS `passenger_complaint`;
CREATE TABLE `passenger_complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `complaint_time` bigint(20) DEFAULT NULL,
  `detail` varchar(256) DEFAULT NULL,
  `result` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of passenger_complaint
-- ----------------------------
INSERT INTO `passenger_complaint` VALUES ('1', '1', '1', '20160420111111', '未按时到达', '已处理');

-- ----------------------------
-- Table structure for passenger_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `passenger_evaluation`;
CREATE TABLE `passenger_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `evaluate_time` bigint(20) DEFAULT NULL,
  `service_score` int(11) DEFAULT NULL,
  `driver_score` int(11) DEFAULT NULL,
  `vehicle_score` int(11) DEFAULT NULL,
  `detail` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='乘客评价';

-- ----------------------------
-- Records of passenger_evaluation
-- ----------------------------
INSERT INTO `passenger_evaluation` VALUES ('1', '1', '1', '20170430', '10', '10', '10', '1');

-- ----------------------------
-- Table structure for passenger_info
-- ----------------------------
DROP TABLE IF EXISTS `passenger_info`;
CREATE TABLE `passenger_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `register_date` int(11) DEFAULT NULL,
  `passenger_phone` varchar(32) DEFAULT NULL,
  `passenger_name` varchar(64) DEFAULT NULL,
  `passenger_gender` varchar(2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='乘客信息';

-- ----------------------------
-- Records of passenger_info
-- ----------------------------
INSERT INTO `passenger_info` VALUES ('1', '1', '20170911', '11111111', '张三', '女', '0', '0', '20171222222222');

-- ----------------------------
-- Table structure for region_info
-- ----------------------------
DROP TABLE IF EXISTS `region_info`;
CREATE TABLE `region_info` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `region_code` varchar(64) DEFAULT NULL,
  `region_name` varchar(64) DEFAULT NULL,
  `parent_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3719 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region_info
-- ----------------------------
INSERT INTO `region_info` VALUES ('1', '110000', '北京市', null);
INSERT INTO `region_info` VALUES ('2', '120000', '天津市', null);
INSERT INTO `region_info` VALUES ('3', '130000', '河北省', null);
INSERT INTO `region_info` VALUES ('4', '140000', '山西省', null);
INSERT INTO `region_info` VALUES ('5', '150000', '内蒙古自治区', null);
INSERT INTO `region_info` VALUES ('6', '210000', '辽宁省', null);
INSERT INTO `region_info` VALUES ('7', '220000', '吉林省', null);
INSERT INTO `region_info` VALUES ('8', '230000', '黑龙江省', null);
INSERT INTO `region_info` VALUES ('9', '310000', '上海市', null);
INSERT INTO `region_info` VALUES ('10', '320000', '江苏省', null);
INSERT INTO `region_info` VALUES ('11', '330000', '浙江省', null);
INSERT INTO `region_info` VALUES ('12', '340000', '安徽省', null);
INSERT INTO `region_info` VALUES ('13', '350000', '福建省', null);
INSERT INTO `region_info` VALUES ('14', '360000', '江西省', null);
INSERT INTO `region_info` VALUES ('15', '370000', '山东省', null);
INSERT INTO `region_info` VALUES ('16', '410000', '河南省', null);
INSERT INTO `region_info` VALUES ('17', '420000', '湖北省', null);
INSERT INTO `region_info` VALUES ('18', '430000', '湖南省', null);
INSERT INTO `region_info` VALUES ('19', '440000', '广东省', null);
INSERT INTO `region_info` VALUES ('20', '450000', '广西壮族自治区', null);
INSERT INTO `region_info` VALUES ('21', '460000', '海南省', null);
INSERT INTO `region_info` VALUES ('22', '500000', '重庆市', null);
INSERT INTO `region_info` VALUES ('23', '510000', '四川省', null);
INSERT INTO `region_info` VALUES ('24', '520000', '贵州省', null);
INSERT INTO `region_info` VALUES ('25', '530000', '云南省', null);
INSERT INTO `region_info` VALUES ('26', '540000', '西藏自治区', null);
INSERT INTO `region_info` VALUES ('27', '610000', '陕西省', null);
INSERT INTO `region_info` VALUES ('28', '620000', '甘肃省', null);
INSERT INTO `region_info` VALUES ('29', '630000', '青海省', null);
INSERT INTO `region_info` VALUES ('30', '640000', '宁夏回族自治区', null);
INSERT INTO `region_info` VALUES ('31', '650000', '新疆维吾尔自治区', null);
INSERT INTO `region_info` VALUES ('32', '710000', '台湾省', null);
INSERT INTO `region_info` VALUES ('33', '810000', '香港特别行政区', null);
INSERT INTO `region_info` VALUES ('34', '820000', '澳门特别行政区', null);
INSERT INTO `region_info` VALUES ('64', '110100', '市辖区', '110000');
INSERT INTO `region_info` VALUES ('65', '110200', '县', '110000');
INSERT INTO `region_info` VALUES ('66', '120100', '市辖区', '120000');
INSERT INTO `region_info` VALUES ('67', '120200', '县', '120000');
INSERT INTO `region_info` VALUES ('68', '130100', '石家庄市', '130000');
INSERT INTO `region_info` VALUES ('69', '130200', '唐山市', '130000');
INSERT INTO `region_info` VALUES ('70', '130300', '秦皇岛市', '130000');
INSERT INTO `region_info` VALUES ('71', '130400', '邯郸市', '130000');
INSERT INTO `region_info` VALUES ('72', '130500', '邢台市', '130000');
INSERT INTO `region_info` VALUES ('73', '130600', '保定市', '130000');
INSERT INTO `region_info` VALUES ('74', '130700', '张家口市', '130000');
INSERT INTO `region_info` VALUES ('75', '130800', '承德市', '130000');
INSERT INTO `region_info` VALUES ('76', '130900', '沧州市', '130000');
INSERT INTO `region_info` VALUES ('77', '131000', '廊坊市', '130000');
INSERT INTO `region_info` VALUES ('78', '131100', '衡水市', '130000');
INSERT INTO `region_info` VALUES ('79', '140100', '太原市', '140000');
INSERT INTO `region_info` VALUES ('80', '140200', '大同市', '140000');
INSERT INTO `region_info` VALUES ('81', '140300', '阳泉市', '140000');
INSERT INTO `region_info` VALUES ('82', '140400', '长治市', '140000');
INSERT INTO `region_info` VALUES ('83', '140500', '晋城市', '140000');
INSERT INTO `region_info` VALUES ('84', '140600', '朔州市', '140000');
INSERT INTO `region_info` VALUES ('85', '140700', '晋中市', '140000');
INSERT INTO `region_info` VALUES ('86', '140800', '运城市', '140000');
INSERT INTO `region_info` VALUES ('87', '140900', '忻州市', '140000');
INSERT INTO `region_info` VALUES ('88', '141000', '临汾市', '140000');
INSERT INTO `region_info` VALUES ('89', '141100', '吕梁市', '140000');
INSERT INTO `region_info` VALUES ('90', '150100', '呼和浩特市', '150000');
INSERT INTO `region_info` VALUES ('91', '150200', '包头市', '150000');
INSERT INTO `region_info` VALUES ('92', '150300', '乌海市', '150000');
INSERT INTO `region_info` VALUES ('93', '150400', '赤峰市', '150000');
INSERT INTO `region_info` VALUES ('94', '150500', '通辽市', '150000');
INSERT INTO `region_info` VALUES ('95', '150600', '鄂尔多斯市', '150000');
INSERT INTO `region_info` VALUES ('96', '150700', '呼伦贝尔市', '150000');
INSERT INTO `region_info` VALUES ('97', '150800', '巴彦淖尔市', '150000');
INSERT INTO `region_info` VALUES ('98', '150900', '乌兰察布市', '150000');
INSERT INTO `region_info` VALUES ('99', '152200', '兴安盟', '150000');
INSERT INTO `region_info` VALUES ('100', '152500', '锡林郭勒盟', '150000');
INSERT INTO `region_info` VALUES ('101', '152900', '阿拉善盟', '150000');
INSERT INTO `region_info` VALUES ('102', '210100', '沈阳市', '210000');
INSERT INTO `region_info` VALUES ('103', '210200', '大连市', '210000');
INSERT INTO `region_info` VALUES ('104', '210300', '鞍山市', '210000');
INSERT INTO `region_info` VALUES ('105', '210400', '抚顺市', '210000');
INSERT INTO `region_info` VALUES ('106', '210500', '本溪市', '210000');
INSERT INTO `region_info` VALUES ('107', '210600', '丹东市', '210000');
INSERT INTO `region_info` VALUES ('108', '210700', '锦州市', '210000');
INSERT INTO `region_info` VALUES ('109', '210800', '营口市', '210000');
INSERT INTO `region_info` VALUES ('110', '210900', '阜新市', '210000');
INSERT INTO `region_info` VALUES ('111', '211000', '辽阳市', '210000');
INSERT INTO `region_info` VALUES ('112', '211100', '盘锦市', '210000');
INSERT INTO `region_info` VALUES ('113', '211200', '铁岭市', '210000');
INSERT INTO `region_info` VALUES ('114', '211300', '朝阳市', '210000');
INSERT INTO `region_info` VALUES ('115', '211400', '葫芦岛市', '210000');
INSERT INTO `region_info` VALUES ('116', '220100', '长春市', '220000');
INSERT INTO `region_info` VALUES ('117', '220200', '吉林市', '220000');
INSERT INTO `region_info` VALUES ('118', '220300', '四平市', '220000');
INSERT INTO `region_info` VALUES ('119', '220400', '辽源市', '220000');
INSERT INTO `region_info` VALUES ('120', '220500', '通化市', '220000');
INSERT INTO `region_info` VALUES ('121', '220600', '白山市', '220000');
INSERT INTO `region_info` VALUES ('122', '220700', '松原市', '220000');
INSERT INTO `region_info` VALUES ('123', '220800', '白城市', '220000');
INSERT INTO `region_info` VALUES ('124', '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `region_info` VALUES ('125', '230100', '哈尔滨市', '230000');
INSERT INTO `region_info` VALUES ('126', '230200', '齐齐哈尔市', '230000');
INSERT INTO `region_info` VALUES ('127', '230300', '鸡西市', '230000');
INSERT INTO `region_info` VALUES ('128', '230400', '鹤岗市', '230000');
INSERT INTO `region_info` VALUES ('129', '230500', '双鸭山市', '230000');
INSERT INTO `region_info` VALUES ('130', '230600', '大庆市', '230000');
INSERT INTO `region_info` VALUES ('131', '230700', '伊春市', '230000');
INSERT INTO `region_info` VALUES ('132', '230800', '佳木斯市', '230000');
INSERT INTO `region_info` VALUES ('133', '230900', '七台河市', '230000');
INSERT INTO `region_info` VALUES ('134', '231000', '牡丹江市', '230000');
INSERT INTO `region_info` VALUES ('135', '231100', '黑河市', '230000');
INSERT INTO `region_info` VALUES ('136', '231200', '绥化市', '230000');
INSERT INTO `region_info` VALUES ('137', '232700', '大兴安岭地区', '230000');
INSERT INTO `region_info` VALUES ('138', '310100', '市辖区', '310000');
INSERT INTO `region_info` VALUES ('139', '310200', '县', '310000');
INSERT INTO `region_info` VALUES ('140', '320100', '南京市', '320000');
INSERT INTO `region_info` VALUES ('141', '320200', '无锡市', '320000');
INSERT INTO `region_info` VALUES ('142', '320300', '徐州市', '320000');
INSERT INTO `region_info` VALUES ('143', '320400', '常州市', '320000');
INSERT INTO `region_info` VALUES ('144', '320500', '苏州市', '320000');
INSERT INTO `region_info` VALUES ('145', '320600', '南通市', '320000');
INSERT INTO `region_info` VALUES ('146', '320700', '连云港市', '320000');
INSERT INTO `region_info` VALUES ('147', '320800', '淮安市', '320000');
INSERT INTO `region_info` VALUES ('148', '320900', '盐城市', '320000');
INSERT INTO `region_info` VALUES ('149', '321000', '扬州市', '320000');
INSERT INTO `region_info` VALUES ('150', '321100', '镇江市', '320000');
INSERT INTO `region_info` VALUES ('151', '321200', '泰州市', '320000');
INSERT INTO `region_info` VALUES ('152', '321300', '宿迁市', '320000');
INSERT INTO `region_info` VALUES ('153', '330100', '杭州市', '330000');
INSERT INTO `region_info` VALUES ('154', '330200', '宁波市', '330000');
INSERT INTO `region_info` VALUES ('155', '330300', '温州市', '330000');
INSERT INTO `region_info` VALUES ('156', '330400', '嘉兴市', '330000');
INSERT INTO `region_info` VALUES ('157', '330500', '湖州市', '330000');
INSERT INTO `region_info` VALUES ('158', '330600', '绍兴市', '330000');
INSERT INTO `region_info` VALUES ('159', '330700', '金华市', '330000');
INSERT INTO `region_info` VALUES ('160', '330800', '衢州市', '330000');
INSERT INTO `region_info` VALUES ('161', '330900', '舟山市', '330000');
INSERT INTO `region_info` VALUES ('162', '331000', '台州市', '330000');
INSERT INTO `region_info` VALUES ('163', '331100', '丽水市', '330000');
INSERT INTO `region_info` VALUES ('164', '340100', '合肥市', '340000');
INSERT INTO `region_info` VALUES ('165', '340200', '芜湖市', '340000');
INSERT INTO `region_info` VALUES ('166', '340300', '蚌埠市', '340000');
INSERT INTO `region_info` VALUES ('167', '340400', '淮南市', '340000');
INSERT INTO `region_info` VALUES ('168', '340500', '马鞍山市', '340000');
INSERT INTO `region_info` VALUES ('169', '340600', '淮北市', '340000');
INSERT INTO `region_info` VALUES ('170', '340700', '铜陵市', '340000');
INSERT INTO `region_info` VALUES ('171', '340800', '安庆市', '340000');
INSERT INTO `region_info` VALUES ('172', '341000', '黄山市', '340000');
INSERT INTO `region_info` VALUES ('173', '341100', '滁州市', '340000');
INSERT INTO `region_info` VALUES ('174', '341200', '阜阳市', '340000');
INSERT INTO `region_info` VALUES ('175', '341300', '宿州市', '340000');
INSERT INTO `region_info` VALUES ('176', '341400', '巢湖市', '340000');
INSERT INTO `region_info` VALUES ('177', '341500', '六安市', '340000');
INSERT INTO `region_info` VALUES ('178', '341600', '亳州市', '340000');
INSERT INTO `region_info` VALUES ('179', '341700', '池州市', '340000');
INSERT INTO `region_info` VALUES ('180', '341800', '宣城市', '340000');
INSERT INTO `region_info` VALUES ('181', '350100', '福州市', '350000');
INSERT INTO `region_info` VALUES ('182', '350200', '厦门市', '350000');
INSERT INTO `region_info` VALUES ('183', '350300', '莆田市', '350000');
INSERT INTO `region_info` VALUES ('184', '350400', '三明市', '350000');
INSERT INTO `region_info` VALUES ('185', '350500', '泉州市', '350000');
INSERT INTO `region_info` VALUES ('186', '350600', '漳州市', '350000');
INSERT INTO `region_info` VALUES ('187', '350700', '南平市', '350000');
INSERT INTO `region_info` VALUES ('188', '350800', '龙岩市', '350000');
INSERT INTO `region_info` VALUES ('189', '350900', '宁德市', '350000');
INSERT INTO `region_info` VALUES ('190', '360100', '南昌市', '360000');
INSERT INTO `region_info` VALUES ('191', '360200', '景德镇市', '360000');
INSERT INTO `region_info` VALUES ('192', '360300', '萍乡市', '360000');
INSERT INTO `region_info` VALUES ('193', '360400', '九江市', '360000');
INSERT INTO `region_info` VALUES ('194', '360500', '新余市', '360000');
INSERT INTO `region_info` VALUES ('195', '360600', '鹰潭市', '360000');
INSERT INTO `region_info` VALUES ('196', '360700', '赣州市', '360000');
INSERT INTO `region_info` VALUES ('197', '360800', '吉安市', '360000');
INSERT INTO `region_info` VALUES ('198', '360900', '宜春市', '360000');
INSERT INTO `region_info` VALUES ('199', '361000', '抚州市', '360000');
INSERT INTO `region_info` VALUES ('200', '361100', '上饶市', '360000');
INSERT INTO `region_info` VALUES ('201', '370100', '济南市', '370000');
INSERT INTO `region_info` VALUES ('202', '370200', '青岛市', '370000');
INSERT INTO `region_info` VALUES ('203', '370300', '淄博市', '370000');
INSERT INTO `region_info` VALUES ('204', '370400', '枣庄市', '370000');
INSERT INTO `region_info` VALUES ('205', '370500', '东营市', '370000');
INSERT INTO `region_info` VALUES ('206', '370600', '烟台市', '370000');
INSERT INTO `region_info` VALUES ('207', '370700', '潍坊市', '370000');
INSERT INTO `region_info` VALUES ('208', '370800', '济宁市', '370000');
INSERT INTO `region_info` VALUES ('209', '370900', '泰安市', '370000');
INSERT INTO `region_info` VALUES ('210', '371000', '威海市', '370000');
INSERT INTO `region_info` VALUES ('211', '371100', '日照市', '370000');
INSERT INTO `region_info` VALUES ('212', '371200', '莱芜市', '370000');
INSERT INTO `region_info` VALUES ('213', '371300', '临沂市', '370000');
INSERT INTO `region_info` VALUES ('214', '371400', '德州市', '370000');
INSERT INTO `region_info` VALUES ('215', '371500', '聊城市', '370000');
INSERT INTO `region_info` VALUES ('216', '371600', '滨州市', '370000');
INSERT INTO `region_info` VALUES ('217', '371700', '荷泽市', '370000');
INSERT INTO `region_info` VALUES ('218', '410100', '郑州市', '410000');
INSERT INTO `region_info` VALUES ('219', '410200', '开封市', '410000');
INSERT INTO `region_info` VALUES ('220', '410300', '洛阳市', '410000');
INSERT INTO `region_info` VALUES ('221', '410400', '平顶山市', '410000');
INSERT INTO `region_info` VALUES ('222', '410500', '安阳市', '410000');
INSERT INTO `region_info` VALUES ('223', '410600', '鹤壁市', '410000');
INSERT INTO `region_info` VALUES ('224', '410700', '新乡市', '410000');
INSERT INTO `region_info` VALUES ('225', '410800', '焦作市', '410000');
INSERT INTO `region_info` VALUES ('226', '410900', '濮阳市', '410000');
INSERT INTO `region_info` VALUES ('227', '411000', '许昌市', '410000');
INSERT INTO `region_info` VALUES ('228', '411100', '漯河市', '410000');
INSERT INTO `region_info` VALUES ('229', '411200', '三门峡市', '410000');
INSERT INTO `region_info` VALUES ('230', '411300', '南阳市', '410000');
INSERT INTO `region_info` VALUES ('231', '411400', '商丘市', '410000');
INSERT INTO `region_info` VALUES ('232', '411500', '信阳市', '410000');
INSERT INTO `region_info` VALUES ('233', '411600', '周口市', '410000');
INSERT INTO `region_info` VALUES ('234', '411700', '驻马店市', '410000');
INSERT INTO `region_info` VALUES ('235', '420100', '武汉市', '420000');
INSERT INTO `region_info` VALUES ('236', '420200', '黄石市', '420000');
INSERT INTO `region_info` VALUES ('237', '420300', '十堰市', '420000');
INSERT INTO `region_info` VALUES ('238', '420500', '宜昌市', '420000');
INSERT INTO `region_info` VALUES ('239', '420600', '襄樊市', '420000');
INSERT INTO `region_info` VALUES ('240', '420700', '鄂州市', '420000');
INSERT INTO `region_info` VALUES ('241', '420800', '荆门市', '420000');
INSERT INTO `region_info` VALUES ('242', '420900', '孝感市', '420000');
INSERT INTO `region_info` VALUES ('243', '421000', '荆州市', '420000');
INSERT INTO `region_info` VALUES ('244', '421100', '黄冈市', '420000');
INSERT INTO `region_info` VALUES ('245', '421200', '咸宁市', '420000');
INSERT INTO `region_info` VALUES ('246', '421300', '随州市', '420000');
INSERT INTO `region_info` VALUES ('247', '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `region_info` VALUES ('248', '429000', '省直辖行政单位', '420000');
INSERT INTO `region_info` VALUES ('249', '430100', '长沙市', '430000');
INSERT INTO `region_info` VALUES ('250', '430200', '株洲市', '430000');
INSERT INTO `region_info` VALUES ('251', '430300', '湘潭市', '430000');
INSERT INTO `region_info` VALUES ('252', '430400', '衡阳市', '430000');
INSERT INTO `region_info` VALUES ('253', '430500', '邵阳市', '430000');
INSERT INTO `region_info` VALUES ('254', '430600', '岳阳市', '430000');
INSERT INTO `region_info` VALUES ('255', '430700', '常德市', '430000');
INSERT INTO `region_info` VALUES ('256', '430800', '张家界市', '430000');
INSERT INTO `region_info` VALUES ('257', '430900', '益阳市', '430000');
INSERT INTO `region_info` VALUES ('258', '431000', '郴州市', '430000');
INSERT INTO `region_info` VALUES ('259', '431100', '永州市', '430000');
INSERT INTO `region_info` VALUES ('260', '431200', '怀化市', '430000');
INSERT INTO `region_info` VALUES ('261', '431300', '娄底市', '430000');
INSERT INTO `region_info` VALUES ('262', '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `region_info` VALUES ('263', '440100', '广州市', '440000');
INSERT INTO `region_info` VALUES ('264', '440200', '韶关市', '440000');
INSERT INTO `region_info` VALUES ('265', '440300', '深圳市', '440000');
INSERT INTO `region_info` VALUES ('266', '440400', '珠海市', '440000');
INSERT INTO `region_info` VALUES ('267', '440500', '汕头市', '440000');
INSERT INTO `region_info` VALUES ('268', '440600', '佛山市', '440000');
INSERT INTO `region_info` VALUES ('269', '440700', '江门市', '440000');
INSERT INTO `region_info` VALUES ('270', '440800', '湛江市', '440000');
INSERT INTO `region_info` VALUES ('271', '440900', '茂名市', '440000');
INSERT INTO `region_info` VALUES ('272', '441200', '肇庆市', '440000');
INSERT INTO `region_info` VALUES ('273', '441300', '惠州市', '440000');
INSERT INTO `region_info` VALUES ('274', '441400', '梅州市', '440000');
INSERT INTO `region_info` VALUES ('275', '441500', '汕尾市', '440000');
INSERT INTO `region_info` VALUES ('276', '441600', '河源市', '440000');
INSERT INTO `region_info` VALUES ('277', '441700', '阳江市', '440000');
INSERT INTO `region_info` VALUES ('278', '441800', '清远市', '440000');
INSERT INTO `region_info` VALUES ('279', '441900', '东莞市', '440000');
INSERT INTO `region_info` VALUES ('280', '442000', '中山市', '440000');
INSERT INTO `region_info` VALUES ('281', '445100', '潮州市', '440000');
INSERT INTO `region_info` VALUES ('282', '445200', '揭阳市', '440000');
INSERT INTO `region_info` VALUES ('283', '445300', '云浮市', '440000');
INSERT INTO `region_info` VALUES ('284', '450100', '南宁市', '450000');
INSERT INTO `region_info` VALUES ('285', '450200', '柳州市', '450000');
INSERT INTO `region_info` VALUES ('286', '450300', '桂林市', '450000');
INSERT INTO `region_info` VALUES ('287', '450400', '梧州市', '450000');
INSERT INTO `region_info` VALUES ('288', '450500', '北海市', '450000');
INSERT INTO `region_info` VALUES ('289', '450600', '防城港市', '450000');
INSERT INTO `region_info` VALUES ('290', '450700', '钦州市', '450000');
INSERT INTO `region_info` VALUES ('291', '450800', '贵港市', '450000');
INSERT INTO `region_info` VALUES ('292', '450900', '玉林市', '450000');
INSERT INTO `region_info` VALUES ('293', '451000', '百色市', '450000');
INSERT INTO `region_info` VALUES ('294', '451100', '贺州市', '450000');
INSERT INTO `region_info` VALUES ('295', '451200', '河池市', '450000');
INSERT INTO `region_info` VALUES ('296', '451300', '来宾市', '450000');
INSERT INTO `region_info` VALUES ('297', '451400', '崇左市', '450000');
INSERT INTO `region_info` VALUES ('298', '460100', '海口市', '460000');
INSERT INTO `region_info` VALUES ('299', '460200', '三亚市', '460000');
INSERT INTO `region_info` VALUES ('300', '469000', '省直辖县级行政单位', '460000');
INSERT INTO `region_info` VALUES ('301', '500100', '市辖区', '500000');
INSERT INTO `region_info` VALUES ('302', '500200', '县', '500000');
INSERT INTO `region_info` VALUES ('303', '500300', '市', '500000');
INSERT INTO `region_info` VALUES ('304', '510100', '成都市', '510000');
INSERT INTO `region_info` VALUES ('305', '510300', '自贡市', '510000');
INSERT INTO `region_info` VALUES ('306', '510400', '攀枝花市', '510000');
INSERT INTO `region_info` VALUES ('307', '510500', '泸州市', '510000');
INSERT INTO `region_info` VALUES ('308', '510600', '德阳市', '510000');
INSERT INTO `region_info` VALUES ('309', '510700', '绵阳市', '510000');
INSERT INTO `region_info` VALUES ('310', '510800', '广元市', '510000');
INSERT INTO `region_info` VALUES ('311', '510900', '遂宁市', '510000');
INSERT INTO `region_info` VALUES ('312', '511000', '内江市', '510000');
INSERT INTO `region_info` VALUES ('313', '511100', '乐山市', '510000');
INSERT INTO `region_info` VALUES ('314', '511300', '南充市', '510000');
INSERT INTO `region_info` VALUES ('315', '511400', '眉山市', '510000');
INSERT INTO `region_info` VALUES ('316', '511500', '宜宾市', '510000');
INSERT INTO `region_info` VALUES ('317', '511600', '广安市', '510000');
INSERT INTO `region_info` VALUES ('318', '511700', '达州市', '510000');
INSERT INTO `region_info` VALUES ('319', '511800', '雅安市', '510000');
INSERT INTO `region_info` VALUES ('320', '511900', '巴中市', '510000');
INSERT INTO `region_info` VALUES ('321', '512000', '资阳市', '510000');
INSERT INTO `region_info` VALUES ('322', '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `region_info` VALUES ('323', '513300', '甘孜藏族自治州', '510000');
INSERT INTO `region_info` VALUES ('324', '513400', '凉山彝族自治州', '510000');
INSERT INTO `region_info` VALUES ('325', '520100', '贵阳市', '520000');
INSERT INTO `region_info` VALUES ('326', '520200', '六盘水市', '520000');
INSERT INTO `region_info` VALUES ('327', '520300', '遵义市', '520000');
INSERT INTO `region_info` VALUES ('328', '520400', '安顺市', '520000');
INSERT INTO `region_info` VALUES ('329', '522200', '铜仁地区', '520000');
INSERT INTO `region_info` VALUES ('330', '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `region_info` VALUES ('331', '522400', '毕节地区', '520000');
INSERT INTO `region_info` VALUES ('332', '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `region_info` VALUES ('333', '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `region_info` VALUES ('334', '530100', '昆明市', '530000');
INSERT INTO `region_info` VALUES ('335', '530300', '曲靖市', '530000');
INSERT INTO `region_info` VALUES ('336', '530400', '玉溪市', '530000');
INSERT INTO `region_info` VALUES ('337', '530500', '保山市', '530000');
INSERT INTO `region_info` VALUES ('338', '530600', '昭通市', '530000');
INSERT INTO `region_info` VALUES ('339', '530700', '丽江市', '530000');
INSERT INTO `region_info` VALUES ('340', '530800', '思茅市', '530000');
INSERT INTO `region_info` VALUES ('341', '530900', '临沧市', '530000');
INSERT INTO `region_info` VALUES ('342', '532300', '楚雄彝族自治州', '530000');
INSERT INTO `region_info` VALUES ('343', '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `region_info` VALUES ('344', '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `region_info` VALUES ('345', '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `region_info` VALUES ('346', '532900', '大理白族自治州', '530000');
INSERT INTO `region_info` VALUES ('347', '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `region_info` VALUES ('348', '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `region_info` VALUES ('349', '533400', '迪庆藏族自治州', '530000');
INSERT INTO `region_info` VALUES ('350', '540100', '拉萨市', '540000');
INSERT INTO `region_info` VALUES ('351', '542100', '昌都地区', '540000');
INSERT INTO `region_info` VALUES ('352', '542200', '山南地区', '540000');
INSERT INTO `region_info` VALUES ('353', '542300', '日喀则地区', '540000');
INSERT INTO `region_info` VALUES ('354', '542400', '那曲地区', '540000');
INSERT INTO `region_info` VALUES ('355', '542500', '阿里地区', '540000');
INSERT INTO `region_info` VALUES ('356', '542600', '林芝地区', '540000');
INSERT INTO `region_info` VALUES ('357', '610100', '西安市', '610000');
INSERT INTO `region_info` VALUES ('358', '610200', '铜川市', '610000');
INSERT INTO `region_info` VALUES ('359', '610300', '宝鸡市', '610000');
INSERT INTO `region_info` VALUES ('360', '610400', '咸阳市', '610000');
INSERT INTO `region_info` VALUES ('361', '610500', '渭南市', '610000');
INSERT INTO `region_info` VALUES ('362', '610600', '延安市', '610000');
INSERT INTO `region_info` VALUES ('363', '610700', '汉中市', '610000');
INSERT INTO `region_info` VALUES ('364', '610800', '榆林市', '610000');
INSERT INTO `region_info` VALUES ('365', '610900', '安康市', '610000');
INSERT INTO `region_info` VALUES ('366', '611000', '商洛市', '610000');
INSERT INTO `region_info` VALUES ('367', '620100', '兰州市', '620000');
INSERT INTO `region_info` VALUES ('368', '620200', '嘉峪关市', '620000');
INSERT INTO `region_info` VALUES ('369', '620300', '金昌市', '620000');
INSERT INTO `region_info` VALUES ('370', '620400', '白银市', '620000');
INSERT INTO `region_info` VALUES ('371', '620500', '天水市', '620000');
INSERT INTO `region_info` VALUES ('372', '620600', '武威市', '620000');
INSERT INTO `region_info` VALUES ('373', '620700', '张掖市', '620000');
INSERT INTO `region_info` VALUES ('374', '620800', '平凉市', '620000');
INSERT INTO `region_info` VALUES ('375', '620900', '酒泉市', '620000');
INSERT INTO `region_info` VALUES ('376', '621000', '庆阳市', '620000');
INSERT INTO `region_info` VALUES ('377', '621100', '定西市', '620000');
INSERT INTO `region_info` VALUES ('378', '621200', '陇南市', '620000');
INSERT INTO `region_info` VALUES ('379', '622900', '临夏回族自治州', '620000');
INSERT INTO `region_info` VALUES ('380', '623000', '甘南藏族自治州', '620000');
INSERT INTO `region_info` VALUES ('381', '630100', '西宁市', '630000');
INSERT INTO `region_info` VALUES ('382', '632100', '海东地区', '630000');
INSERT INTO `region_info` VALUES ('383', '632200', '海北藏族自治州', '630000');
INSERT INTO `region_info` VALUES ('384', '632300', '黄南藏族自治州', '630000');
INSERT INTO `region_info` VALUES ('385', '632500', '海南藏族自治州', '630000');
INSERT INTO `region_info` VALUES ('386', '632600', '果洛藏族自治州', '630000');
INSERT INTO `region_info` VALUES ('387', '632700', '玉树藏族自治州', '630000');
INSERT INTO `region_info` VALUES ('388', '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `region_info` VALUES ('389', '640100', '银川市', '640000');
INSERT INTO `region_info` VALUES ('390', '640200', '石嘴山市', '640000');
INSERT INTO `region_info` VALUES ('391', '640300', '吴忠市', '640000');
INSERT INTO `region_info` VALUES ('392', '640400', '固原市', '640000');
INSERT INTO `region_info` VALUES ('393', '640500', '中卫市', '640000');
INSERT INTO `region_info` VALUES ('394', '650100', '乌鲁木齐市', '650000');
INSERT INTO `region_info` VALUES ('395', '650200', '克拉玛依市', '650000');
INSERT INTO `region_info` VALUES ('396', '652100', '吐鲁番地区', '650000');
INSERT INTO `region_info` VALUES ('397', '652200', '哈密地区', '650000');
INSERT INTO `region_info` VALUES ('398', '652300', '昌吉回族自治州', '650000');
INSERT INTO `region_info` VALUES ('399', '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `region_info` VALUES ('400', '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `region_info` VALUES ('401', '652900', '阿克苏地区', '650000');
INSERT INTO `region_info` VALUES ('402', '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `region_info` VALUES ('403', '653100', '喀什地区', '650000');
INSERT INTO `region_info` VALUES ('404', '653200', '和田地区', '650000');
INSERT INTO `region_info` VALUES ('405', '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `region_info` VALUES ('406', '654200', '塔城地区', '650000');
INSERT INTO `region_info` VALUES ('407', '654300', '阿勒泰地区', '650000');
INSERT INTO `region_info` VALUES ('408', '659000', '省直辖行政单位', '650000');
INSERT INTO `region_info` VALUES ('575', '110101', '东城区', '110100');
INSERT INTO `region_info` VALUES ('576', '110102', '西城区', '110100');
INSERT INTO `region_info` VALUES ('577', '110103', '崇文区', '110100');
INSERT INTO `region_info` VALUES ('578', '110104', '宣武区', '110100');
INSERT INTO `region_info` VALUES ('579', '110105', '朝阳区', '110100');
INSERT INTO `region_info` VALUES ('580', '110106', '丰台区', '110100');
INSERT INTO `region_info` VALUES ('581', '110107', '石景山区', '110100');
INSERT INTO `region_info` VALUES ('582', '110108', '海淀区', '110100');
INSERT INTO `region_info` VALUES ('583', '110109', '门头沟区', '110100');
INSERT INTO `region_info` VALUES ('584', '110111', '房山区', '110100');
INSERT INTO `region_info` VALUES ('585', '110112', '通州区', '110100');
INSERT INTO `region_info` VALUES ('586', '110113', '顺义区', '110100');
INSERT INTO `region_info` VALUES ('587', '110114', '昌平区', '110100');
INSERT INTO `region_info` VALUES ('588', '110115', '大兴区', '110100');
INSERT INTO `region_info` VALUES ('589', '110116', '怀柔区', '110100');
INSERT INTO `region_info` VALUES ('590', '110117', '平谷区', '110100');
INSERT INTO `region_info` VALUES ('591', '110228', '密云县', '110200');
INSERT INTO `region_info` VALUES ('592', '110229', '延庆县', '110200');
INSERT INTO `region_info` VALUES ('593', '120101', '和平区', '120100');
INSERT INTO `region_info` VALUES ('594', '120102', '河东区', '120100');
INSERT INTO `region_info` VALUES ('595', '120103', '河西区', '120100');
INSERT INTO `region_info` VALUES ('596', '120104', '南开区', '120100');
INSERT INTO `region_info` VALUES ('597', '120105', '河北区', '120100');
INSERT INTO `region_info` VALUES ('598', '120106', '红桥区', '120100');
INSERT INTO `region_info` VALUES ('599', '120107', '塘沽区', '120100');
INSERT INTO `region_info` VALUES ('600', '120108', '汉沽区', '120100');
INSERT INTO `region_info` VALUES ('601', '120109', '大港区', '120100');
INSERT INTO `region_info` VALUES ('602', '120110', '东丽区', '120100');
INSERT INTO `region_info` VALUES ('603', '120111', '西青区', '120100');
INSERT INTO `region_info` VALUES ('604', '120112', '津南区', '120100');
INSERT INTO `region_info` VALUES ('605', '120113', '北辰区', '120100');
INSERT INTO `region_info` VALUES ('606', '120114', '武清区', '120100');
INSERT INTO `region_info` VALUES ('607', '120115', '宝坻区', '120100');
INSERT INTO `region_info` VALUES ('608', '120221', '宁河县', '120200');
INSERT INTO `region_info` VALUES ('609', '120223', '静海县', '120200');
INSERT INTO `region_info` VALUES ('610', '120225', '蓟　县', '120200');
INSERT INTO `region_info` VALUES ('611', '130101', '市辖区', '130100');
INSERT INTO `region_info` VALUES ('612', '130102', '长安区', '130100');
INSERT INTO `region_info` VALUES ('613', '130103', '桥东区', '130100');
INSERT INTO `region_info` VALUES ('614', '130104', '桥西区', '130100');
INSERT INTO `region_info` VALUES ('615', '130105', '新华区', '130100');
INSERT INTO `region_info` VALUES ('616', '130107', '井陉矿区', '130100');
INSERT INTO `region_info` VALUES ('617', '130108', '裕华区', '130100');
INSERT INTO `region_info` VALUES ('618', '130121', '井陉县', '130100');
INSERT INTO `region_info` VALUES ('619', '130123', '正定县', '130100');
INSERT INTO `region_info` VALUES ('620', '130124', '栾城县', '130100');
INSERT INTO `region_info` VALUES ('621', '130125', '行唐县', '130100');
INSERT INTO `region_info` VALUES ('622', '130126', '灵寿县', '130100');
INSERT INTO `region_info` VALUES ('623', '130127', '高邑县', '130100');
INSERT INTO `region_info` VALUES ('624', '130128', '深泽县', '130100');
INSERT INTO `region_info` VALUES ('625', '130129', '赞皇县', '130100');
INSERT INTO `region_info` VALUES ('626', '130130', '无极县', '130100');
INSERT INTO `region_info` VALUES ('627', '130131', '平山县', '130100');
INSERT INTO `region_info` VALUES ('628', '130132', '元氏县', '130100');
INSERT INTO `region_info` VALUES ('629', '130133', '赵　县', '130100');
INSERT INTO `region_info` VALUES ('630', '130181', '辛集市', '130100');
INSERT INTO `region_info` VALUES ('631', '130182', '藁城市', '130100');
INSERT INTO `region_info` VALUES ('632', '130183', '晋州市', '130100');
INSERT INTO `region_info` VALUES ('633', '130184', '新乐市', '130100');
INSERT INTO `region_info` VALUES ('634', '130185', '鹿泉市', '130100');
INSERT INTO `region_info` VALUES ('635', '130201', '市辖区', '130200');
INSERT INTO `region_info` VALUES ('636', '130202', '路南区', '130200');
INSERT INTO `region_info` VALUES ('637', '130203', '路北区', '130200');
INSERT INTO `region_info` VALUES ('638', '130204', '古冶区', '130200');
INSERT INTO `region_info` VALUES ('639', '130205', '开平区', '130200');
INSERT INTO `region_info` VALUES ('640', '130207', '丰南区', '130200');
INSERT INTO `region_info` VALUES ('641', '130208', '丰润区', '130200');
INSERT INTO `region_info` VALUES ('642', '130223', '滦　县', '130200');
INSERT INTO `region_info` VALUES ('643', '130224', '滦南县', '130200');
INSERT INTO `region_info` VALUES ('644', '130225', '乐亭县', '130200');
INSERT INTO `region_info` VALUES ('645', '130227', '迁西县', '130200');
INSERT INTO `region_info` VALUES ('646', '130229', '玉田县', '130200');
INSERT INTO `region_info` VALUES ('647', '130230', '唐海县', '130200');
INSERT INTO `region_info` VALUES ('648', '130281', '遵化市', '130200');
INSERT INTO `region_info` VALUES ('649', '130283', '迁安市', '130200');
INSERT INTO `region_info` VALUES ('650', '130301', '市辖区', '130300');
INSERT INTO `region_info` VALUES ('651', '130302', '海港区', '130300');
INSERT INTO `region_info` VALUES ('652', '130303', '山海关区', '130300');
INSERT INTO `region_info` VALUES ('653', '130304', '北戴河区', '130300');
INSERT INTO `region_info` VALUES ('654', '130321', '青龙满族自治县', '130300');
INSERT INTO `region_info` VALUES ('655', '130322', '昌黎县', '130300');
INSERT INTO `region_info` VALUES ('656', '130323', '抚宁县', '130300');
INSERT INTO `region_info` VALUES ('657', '130324', '卢龙县', '130300');
INSERT INTO `region_info` VALUES ('658', '130401', '市辖区', '130400');
INSERT INTO `region_info` VALUES ('659', '130402', '邯山区', '130400');
INSERT INTO `region_info` VALUES ('660', '130403', '丛台区', '130400');
INSERT INTO `region_info` VALUES ('661', '130404', '复兴区', '130400');
INSERT INTO `region_info` VALUES ('662', '130406', '峰峰矿区', '130400');
INSERT INTO `region_info` VALUES ('663', '130421', '邯郸县', '130400');
INSERT INTO `region_info` VALUES ('664', '130423', '临漳县', '130400');
INSERT INTO `region_info` VALUES ('665', '130424', '成安县', '130400');
INSERT INTO `region_info` VALUES ('666', '130425', '大名县', '130400');
INSERT INTO `region_info` VALUES ('667', '130426', '涉　县', '130400');
INSERT INTO `region_info` VALUES ('668', '130427', '磁　县', '130400');
INSERT INTO `region_info` VALUES ('669', '130428', '肥乡县', '130400');
INSERT INTO `region_info` VALUES ('670', '130429', '永年县', '130400');
INSERT INTO `region_info` VALUES ('671', '130430', '邱　县', '130400');
INSERT INTO `region_info` VALUES ('672', '130431', '鸡泽县', '130400');
INSERT INTO `region_info` VALUES ('673', '130432', '广平县', '130400');
INSERT INTO `region_info` VALUES ('674', '130433', '馆陶县', '130400');
INSERT INTO `region_info` VALUES ('675', '130434', '魏　县', '130400');
INSERT INTO `region_info` VALUES ('676', '130435', '曲周县', '130400');
INSERT INTO `region_info` VALUES ('677', '130481', '武安市', '130400');
INSERT INTO `region_info` VALUES ('678', '130501', '市辖区', '130500');
INSERT INTO `region_info` VALUES ('679', '130502', '桥东区', '130500');
INSERT INTO `region_info` VALUES ('680', '130503', '桥西区', '130500');
INSERT INTO `region_info` VALUES ('681', '130521', '邢台县', '130500');
INSERT INTO `region_info` VALUES ('682', '130522', '临城县', '130500');
INSERT INTO `region_info` VALUES ('683', '130523', '内丘县', '130500');
INSERT INTO `region_info` VALUES ('684', '130524', '柏乡县', '130500');
INSERT INTO `region_info` VALUES ('685', '130525', '隆尧县', '130500');
INSERT INTO `region_info` VALUES ('686', '130526', '任　县', '130500');
INSERT INTO `region_info` VALUES ('687', '130527', '南和县', '130500');
INSERT INTO `region_info` VALUES ('688', '130528', '宁晋县', '130500');
INSERT INTO `region_info` VALUES ('689', '130529', '巨鹿县', '130500');
INSERT INTO `region_info` VALUES ('690', '130530', '新河县', '130500');
INSERT INTO `region_info` VALUES ('691', '130531', '广宗县', '130500');
INSERT INTO `region_info` VALUES ('692', '130532', '平乡县', '130500');
INSERT INTO `region_info` VALUES ('693', '130533', '威　县', '130500');
INSERT INTO `region_info` VALUES ('694', '130534', '清河县', '130500');
INSERT INTO `region_info` VALUES ('695', '130535', '临西县', '130500');
INSERT INTO `region_info` VALUES ('696', '130581', '南宫市', '130500');
INSERT INTO `region_info` VALUES ('697', '130582', '沙河市', '130500');
INSERT INTO `region_info` VALUES ('698', '130601', '市辖区', '130600');
INSERT INTO `region_info` VALUES ('699', '130602', '新市区', '130600');
INSERT INTO `region_info` VALUES ('700', '130603', '北市区', '130600');
INSERT INTO `region_info` VALUES ('701', '130604', '南市区', '130600');
INSERT INTO `region_info` VALUES ('702', '130621', '满城县', '130600');
INSERT INTO `region_info` VALUES ('703', '130622', '清苑县', '130600');
INSERT INTO `region_info` VALUES ('704', '130623', '涞水县', '130600');
INSERT INTO `region_info` VALUES ('705', '130624', '阜平县', '130600');
INSERT INTO `region_info` VALUES ('706', '130625', '徐水县', '130600');
INSERT INTO `region_info` VALUES ('707', '130626', '定兴县', '130600');
INSERT INTO `region_info` VALUES ('708', '130627', '唐　县', '130600');
INSERT INTO `region_info` VALUES ('709', '130628', '高阳县', '130600');
INSERT INTO `region_info` VALUES ('710', '130629', '容城县', '130600');
INSERT INTO `region_info` VALUES ('711', '130630', '涞源县', '130600');
INSERT INTO `region_info` VALUES ('712', '130631', '望都县', '130600');
INSERT INTO `region_info` VALUES ('713', '130632', '安新县', '130600');
INSERT INTO `region_info` VALUES ('714', '130633', '易　县', '130600');
INSERT INTO `region_info` VALUES ('715', '130634', '曲阳县', '130600');
INSERT INTO `region_info` VALUES ('716', '130635', '蠡　县', '130600');
INSERT INTO `region_info` VALUES ('717', '130636', '顺平县', '130600');
INSERT INTO `region_info` VALUES ('718', '130637', '博野县', '130600');
INSERT INTO `region_info` VALUES ('719', '130638', '雄　县', '130600');
INSERT INTO `region_info` VALUES ('720', '130681', '涿州市', '130600');
INSERT INTO `region_info` VALUES ('721', '130682', '定州市', '130600');
INSERT INTO `region_info` VALUES ('722', '130683', '安国市', '130600');
INSERT INTO `region_info` VALUES ('723', '130684', '高碑店市', '130600');
INSERT INTO `region_info` VALUES ('724', '130701', '市辖区', '130700');
INSERT INTO `region_info` VALUES ('725', '130702', '桥东区', '130700');
INSERT INTO `region_info` VALUES ('726', '130703', '桥西区', '130700');
INSERT INTO `region_info` VALUES ('727', '130705', '宣化区', '130700');
INSERT INTO `region_info` VALUES ('728', '130706', '下花园区', '130700');
INSERT INTO `region_info` VALUES ('729', '130721', '宣化县', '130700');
INSERT INTO `region_info` VALUES ('730', '130722', '张北县', '130700');
INSERT INTO `region_info` VALUES ('731', '130723', '康保县', '130700');
INSERT INTO `region_info` VALUES ('732', '130724', '沽源县', '130700');
INSERT INTO `region_info` VALUES ('733', '130725', '尚义县', '130700');
INSERT INTO `region_info` VALUES ('734', '130726', '蔚　县', '130700');
INSERT INTO `region_info` VALUES ('735', '130727', '阳原县', '130700');
INSERT INTO `region_info` VALUES ('736', '130728', '怀安县', '130700');
INSERT INTO `region_info` VALUES ('737', '130729', '万全县', '130700');
INSERT INTO `region_info` VALUES ('738', '130730', '怀来县', '130700');
INSERT INTO `region_info` VALUES ('739', '130731', '涿鹿县', '130700');
INSERT INTO `region_info` VALUES ('740', '130732', '赤城县', '130700');
INSERT INTO `region_info` VALUES ('741', '130733', '崇礼县', '130700');
INSERT INTO `region_info` VALUES ('742', '130801', '市辖区', '130800');
INSERT INTO `region_info` VALUES ('743', '130802', '双桥区', '130800');
INSERT INTO `region_info` VALUES ('744', '130803', '双滦区', '130800');
INSERT INTO `region_info` VALUES ('745', '130804', '鹰手营子矿区', '130800');
INSERT INTO `region_info` VALUES ('746', '130821', '承德县', '130800');
INSERT INTO `region_info` VALUES ('747', '130822', '兴隆县', '130800');
INSERT INTO `region_info` VALUES ('748', '130823', '平泉县', '130800');
INSERT INTO `region_info` VALUES ('749', '130824', '滦平县', '130800');
INSERT INTO `region_info` VALUES ('750', '130825', '隆化县', '130800');
INSERT INTO `region_info` VALUES ('751', '130826', '丰宁满族自治县', '130800');
INSERT INTO `region_info` VALUES ('752', '130827', '宽城满族自治县', '130800');
INSERT INTO `region_info` VALUES ('753', '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `region_info` VALUES ('754', '130901', '市辖区', '130900');
INSERT INTO `region_info` VALUES ('755', '130902', '新华区', '130900');
INSERT INTO `region_info` VALUES ('756', '130903', '运河区', '130900');
INSERT INTO `region_info` VALUES ('757', '130921', '沧　县', '130900');
INSERT INTO `region_info` VALUES ('758', '130922', '青　县', '130900');
INSERT INTO `region_info` VALUES ('759', '130923', '东光县', '130900');
INSERT INTO `region_info` VALUES ('760', '130924', '海兴县', '130900');
INSERT INTO `region_info` VALUES ('761', '130925', '盐山县', '130900');
INSERT INTO `region_info` VALUES ('762', '130926', '肃宁县', '130900');
INSERT INTO `region_info` VALUES ('763', '130927', '南皮县', '130900');
INSERT INTO `region_info` VALUES ('764', '130928', '吴桥县', '130900');
INSERT INTO `region_info` VALUES ('765', '130929', '献　县', '130900');
INSERT INTO `region_info` VALUES ('766', '130930', '孟村回族自治县', '130900');
INSERT INTO `region_info` VALUES ('767', '130981', '泊头市', '130900');
INSERT INTO `region_info` VALUES ('768', '130982', '任丘市', '130900');
INSERT INTO `region_info` VALUES ('769', '130983', '黄骅市', '130900');
INSERT INTO `region_info` VALUES ('770', '130984', '河间市', '130900');
INSERT INTO `region_info` VALUES ('771', '131001', '市辖区', '131000');
INSERT INTO `region_info` VALUES ('772', '131002', '安次区', '131000');
INSERT INTO `region_info` VALUES ('773', '131003', '广阳区', '131000');
INSERT INTO `region_info` VALUES ('774', '131022', '固安县', '131000');
INSERT INTO `region_info` VALUES ('775', '131023', '永清县', '131000');
INSERT INTO `region_info` VALUES ('776', '131024', '香河县', '131000');
INSERT INTO `region_info` VALUES ('777', '131025', '大城县', '131000');
INSERT INTO `region_info` VALUES ('778', '131026', '文安县', '131000');
INSERT INTO `region_info` VALUES ('779', '131028', '大厂回族自治县', '131000');
INSERT INTO `region_info` VALUES ('780', '131081', '霸州市', '131000');
INSERT INTO `region_info` VALUES ('781', '131082', '三河市', '131000');
INSERT INTO `region_info` VALUES ('782', '131101', '市辖区', '131100');
INSERT INTO `region_info` VALUES ('783', '131102', '桃城区', '131100');
INSERT INTO `region_info` VALUES ('784', '131121', '枣强县', '131100');
INSERT INTO `region_info` VALUES ('785', '131122', '武邑县', '131100');
INSERT INTO `region_info` VALUES ('786', '131123', '武强县', '131100');
INSERT INTO `region_info` VALUES ('787', '131124', '饶阳县', '131100');
INSERT INTO `region_info` VALUES ('788', '131125', '安平县', '131100');
INSERT INTO `region_info` VALUES ('789', '131126', '故城县', '131100');
INSERT INTO `region_info` VALUES ('790', '131127', '景　县', '131100');
INSERT INTO `region_info` VALUES ('791', '131128', '阜城县', '131100');
INSERT INTO `region_info` VALUES ('792', '131181', '冀州市', '131100');
INSERT INTO `region_info` VALUES ('793', '131182', '深州市', '131100');
INSERT INTO `region_info` VALUES ('794', '140101', '市辖区', '140100');
INSERT INTO `region_info` VALUES ('795', '140105', '小店区', '140100');
INSERT INTO `region_info` VALUES ('796', '140106', '迎泽区', '140100');
INSERT INTO `region_info` VALUES ('797', '140107', '杏花岭区', '140100');
INSERT INTO `region_info` VALUES ('798', '140108', '尖草坪区', '140100');
INSERT INTO `region_info` VALUES ('799', '140109', '万柏林区', '140100');
INSERT INTO `region_info` VALUES ('800', '140110', '晋源区', '140100');
INSERT INTO `region_info` VALUES ('801', '140121', '清徐县', '140100');
INSERT INTO `region_info` VALUES ('802', '140122', '阳曲县', '140100');
INSERT INTO `region_info` VALUES ('803', '140123', '娄烦县', '140100');
INSERT INTO `region_info` VALUES ('804', '140181', '古交市', '140100');
INSERT INTO `region_info` VALUES ('805', '140201', '市辖区', '140200');
INSERT INTO `region_info` VALUES ('806', '140202', '城　区', '140200');
INSERT INTO `region_info` VALUES ('807', '140203', '矿　区', '140200');
INSERT INTO `region_info` VALUES ('808', '140211', '南郊区', '140200');
INSERT INTO `region_info` VALUES ('809', '140212', '新荣区', '140200');
INSERT INTO `region_info` VALUES ('810', '140221', '阳高县', '140200');
INSERT INTO `region_info` VALUES ('811', '140222', '天镇县', '140200');
INSERT INTO `region_info` VALUES ('812', '140223', '广灵县', '140200');
INSERT INTO `region_info` VALUES ('813', '140224', '灵丘县', '140200');
INSERT INTO `region_info` VALUES ('814', '140225', '浑源县', '140200');
INSERT INTO `region_info` VALUES ('815', '140226', '左云县', '140200');
INSERT INTO `region_info` VALUES ('816', '140227', '大同县', '140200');
INSERT INTO `region_info` VALUES ('817', '140301', '市辖区', '140300');
INSERT INTO `region_info` VALUES ('818', '140302', '城　区', '140300');
INSERT INTO `region_info` VALUES ('819', '140303', '矿　区', '140300');
INSERT INTO `region_info` VALUES ('820', '140311', '郊　区', '140300');
INSERT INTO `region_info` VALUES ('821', '140321', '平定县', '140300');
INSERT INTO `region_info` VALUES ('822', '140322', '盂　县', '140300');
INSERT INTO `region_info` VALUES ('823', '140401', '市辖区', '140400');
INSERT INTO `region_info` VALUES ('824', '140402', '城　区', '140400');
INSERT INTO `region_info` VALUES ('825', '140411', '郊　区', '140400');
INSERT INTO `region_info` VALUES ('826', '140421', '长治县', '140400');
INSERT INTO `region_info` VALUES ('827', '140423', '襄垣县', '140400');
INSERT INTO `region_info` VALUES ('828', '140424', '屯留县', '140400');
INSERT INTO `region_info` VALUES ('829', '140425', '平顺县', '140400');
INSERT INTO `region_info` VALUES ('830', '140426', '黎城县', '140400');
INSERT INTO `region_info` VALUES ('831', '140427', '壶关县', '140400');
INSERT INTO `region_info` VALUES ('832', '140428', '长子县', '140400');
INSERT INTO `region_info` VALUES ('833', '140429', '武乡县', '140400');
INSERT INTO `region_info` VALUES ('834', '140430', '沁　县', '140400');
INSERT INTO `region_info` VALUES ('835', '140431', '沁源县', '140400');
INSERT INTO `region_info` VALUES ('836', '140481', '潞城市', '140400');
INSERT INTO `region_info` VALUES ('837', '140501', '市辖区', '140500');
INSERT INTO `region_info` VALUES ('838', '140502', '城　区', '140500');
INSERT INTO `region_info` VALUES ('839', '140521', '沁水县', '140500');
INSERT INTO `region_info` VALUES ('840', '140522', '阳城县', '140500');
INSERT INTO `region_info` VALUES ('841', '140524', '陵川县', '140500');
INSERT INTO `region_info` VALUES ('842', '140525', '泽州县', '140500');
INSERT INTO `region_info` VALUES ('843', '140581', '高平市', '140500');
INSERT INTO `region_info` VALUES ('844', '140601', '市辖区', '140600');
INSERT INTO `region_info` VALUES ('845', '140602', '朔城区', '140600');
INSERT INTO `region_info` VALUES ('846', '140603', '平鲁区', '140600');
INSERT INTO `region_info` VALUES ('847', '140621', '山阴县', '140600');
INSERT INTO `region_info` VALUES ('848', '140622', '应　县', '140600');
INSERT INTO `region_info` VALUES ('849', '140623', '右玉县', '140600');
INSERT INTO `region_info` VALUES ('850', '140624', '怀仁县', '140600');
INSERT INTO `region_info` VALUES ('851', '140701', '市辖区', '140700');
INSERT INTO `region_info` VALUES ('852', '140702', '榆次区', '140700');
INSERT INTO `region_info` VALUES ('853', '140721', '榆社县', '140700');
INSERT INTO `region_info` VALUES ('854', '140722', '左权县', '140700');
INSERT INTO `region_info` VALUES ('855', '140723', '和顺县', '140700');
INSERT INTO `region_info` VALUES ('856', '140724', '昔阳县', '140700');
INSERT INTO `region_info` VALUES ('857', '140725', '寿阳县', '140700');
INSERT INTO `region_info` VALUES ('858', '140726', '太谷县', '140700');
INSERT INTO `region_info` VALUES ('859', '140727', '祁　县', '140700');
INSERT INTO `region_info` VALUES ('860', '140728', '平遥县', '140700');
INSERT INTO `region_info` VALUES ('861', '140729', '灵石县', '140700');
INSERT INTO `region_info` VALUES ('862', '140781', '介休市', '140700');
INSERT INTO `region_info` VALUES ('863', '140801', '市辖区', '140800');
INSERT INTO `region_info` VALUES ('864', '140802', '盐湖区', '140800');
INSERT INTO `region_info` VALUES ('865', '140821', '临猗县', '140800');
INSERT INTO `region_info` VALUES ('866', '140822', '万荣县', '140800');
INSERT INTO `region_info` VALUES ('867', '140823', '闻喜县', '140800');
INSERT INTO `region_info` VALUES ('868', '140824', '稷山县', '140800');
INSERT INTO `region_info` VALUES ('869', '140825', '新绛县', '140800');
INSERT INTO `region_info` VALUES ('870', '140826', '绛　县', '140800');
INSERT INTO `region_info` VALUES ('871', '140827', '垣曲县', '140800');
INSERT INTO `region_info` VALUES ('872', '140828', '夏　县', '140800');
INSERT INTO `region_info` VALUES ('873', '140829', '平陆县', '140800');
INSERT INTO `region_info` VALUES ('874', '140830', '芮城县', '140800');
INSERT INTO `region_info` VALUES ('875', '140881', '永济市', '140800');
INSERT INTO `region_info` VALUES ('876', '140882', '河津市', '140800');
INSERT INTO `region_info` VALUES ('877', '140901', '市辖区', '140900');
INSERT INTO `region_info` VALUES ('878', '140902', '忻府区', '140900');
INSERT INTO `region_info` VALUES ('879', '140921', '定襄县', '140900');
INSERT INTO `region_info` VALUES ('880', '140922', '五台县', '140900');
INSERT INTO `region_info` VALUES ('881', '140923', '代　县', '140900');
INSERT INTO `region_info` VALUES ('882', '140924', '繁峙县', '140900');
INSERT INTO `region_info` VALUES ('883', '140925', '宁武县', '140900');
INSERT INTO `region_info` VALUES ('884', '140926', '静乐县', '140900');
INSERT INTO `region_info` VALUES ('885', '140927', '神池县', '140900');
INSERT INTO `region_info` VALUES ('886', '140928', '五寨县', '140900');
INSERT INTO `region_info` VALUES ('887', '140929', '岢岚县', '140900');
INSERT INTO `region_info` VALUES ('888', '140930', '河曲县', '140900');
INSERT INTO `region_info` VALUES ('889', '140931', '保德县', '140900');
INSERT INTO `region_info` VALUES ('890', '140932', '偏关县', '140900');
INSERT INTO `region_info` VALUES ('891', '140981', '原平市', '140900');
INSERT INTO `region_info` VALUES ('892', '141001', '市辖区', '141000');
INSERT INTO `region_info` VALUES ('893', '141002', '尧都区', '141000');
INSERT INTO `region_info` VALUES ('894', '141021', '曲沃县', '141000');
INSERT INTO `region_info` VALUES ('895', '141022', '翼城县', '141000');
INSERT INTO `region_info` VALUES ('896', '141023', '襄汾县', '141000');
INSERT INTO `region_info` VALUES ('897', '141024', '洪洞县', '141000');
INSERT INTO `region_info` VALUES ('898', '141025', '古　县', '141000');
INSERT INTO `region_info` VALUES ('899', '141026', '安泽县', '141000');
INSERT INTO `region_info` VALUES ('900', '141027', '浮山县', '141000');
INSERT INTO `region_info` VALUES ('901', '141028', '吉　县', '141000');
INSERT INTO `region_info` VALUES ('902', '141029', '乡宁县', '141000');
INSERT INTO `region_info` VALUES ('903', '141030', '大宁县', '141000');
INSERT INTO `region_info` VALUES ('904', '141031', '隰　县', '141000');
INSERT INTO `region_info` VALUES ('905', '141032', '永和县', '141000');
INSERT INTO `region_info` VALUES ('906', '141033', '蒲　县', '141000');
INSERT INTO `region_info` VALUES ('907', '141034', '汾西县', '141000');
INSERT INTO `region_info` VALUES ('908', '141081', '侯马市', '141000');
INSERT INTO `region_info` VALUES ('909', '141082', '霍州市', '141000');
INSERT INTO `region_info` VALUES ('910', '141101', '市辖区', '141100');
INSERT INTO `region_info` VALUES ('911', '141102', '离石区', '141100');
INSERT INTO `region_info` VALUES ('912', '141121', '文水县', '141100');
INSERT INTO `region_info` VALUES ('913', '141122', '交城县', '141100');
INSERT INTO `region_info` VALUES ('914', '141123', '兴　县', '141100');
INSERT INTO `region_info` VALUES ('915', '141124', '临　县', '141100');
INSERT INTO `region_info` VALUES ('916', '141125', '柳林县', '141100');
INSERT INTO `region_info` VALUES ('917', '141126', '石楼县', '141100');
INSERT INTO `region_info` VALUES ('918', '141127', '岚　县', '141100');
INSERT INTO `region_info` VALUES ('919', '141128', '方山县', '141100');
INSERT INTO `region_info` VALUES ('920', '141129', '中阳县', '141100');
INSERT INTO `region_info` VALUES ('921', '141130', '交口县', '141100');
INSERT INTO `region_info` VALUES ('922', '141181', '孝义市', '141100');
INSERT INTO `region_info` VALUES ('923', '141182', '汾阳市', '141100');
INSERT INTO `region_info` VALUES ('924', '150101', '市辖区', '150100');
INSERT INTO `region_info` VALUES ('925', '150102', '新城区', '150100');
INSERT INTO `region_info` VALUES ('926', '150103', '回民区', '150100');
INSERT INTO `region_info` VALUES ('927', '150104', '玉泉区', '150100');
INSERT INTO `region_info` VALUES ('928', '150105', '赛罕区', '150100');
INSERT INTO `region_info` VALUES ('929', '150121', '土默特左旗', '150100');
INSERT INTO `region_info` VALUES ('930', '150122', '托克托县', '150100');
INSERT INTO `region_info` VALUES ('931', '150123', '和林格尔县', '150100');
INSERT INTO `region_info` VALUES ('932', '150124', '清水河县', '150100');
INSERT INTO `region_info` VALUES ('933', '150125', '武川县', '150100');
INSERT INTO `region_info` VALUES ('934', '150201', '市辖区', '150200');
INSERT INTO `region_info` VALUES ('935', '150202', '东河区', '150200');
INSERT INTO `region_info` VALUES ('936', '150203', '昆都仑区', '150200');
INSERT INTO `region_info` VALUES ('937', '150204', '青山区', '150200');
INSERT INTO `region_info` VALUES ('938', '150205', '石拐区', '150200');
INSERT INTO `region_info` VALUES ('939', '150206', '白云矿区', '150200');
INSERT INTO `region_info` VALUES ('940', '150207', '九原区', '150200');
INSERT INTO `region_info` VALUES ('941', '150221', '土默特右旗', '150200');
INSERT INTO `region_info` VALUES ('942', '150222', '固阳县', '150200');
INSERT INTO `region_info` VALUES ('943', '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `region_info` VALUES ('944', '150301', '市辖区', '150300');
INSERT INTO `region_info` VALUES ('945', '150302', '海勃湾区', '150300');
INSERT INTO `region_info` VALUES ('946', '150303', '海南区', '150300');
INSERT INTO `region_info` VALUES ('947', '150304', '乌达区', '150300');
INSERT INTO `region_info` VALUES ('948', '150401', '市辖区', '150400');
INSERT INTO `region_info` VALUES ('949', '150402', '红山区', '150400');
INSERT INTO `region_info` VALUES ('950', '150403', '元宝山区', '150400');
INSERT INTO `region_info` VALUES ('951', '150404', '松山区', '150400');
INSERT INTO `region_info` VALUES ('952', '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `region_info` VALUES ('953', '150422', '巴林左旗', '150400');
INSERT INTO `region_info` VALUES ('954', '150423', '巴林右旗', '150400');
INSERT INTO `region_info` VALUES ('955', '150424', '林西县', '150400');
INSERT INTO `region_info` VALUES ('956', '150425', '克什克腾旗', '150400');
INSERT INTO `region_info` VALUES ('957', '150426', '翁牛特旗', '150400');
INSERT INTO `region_info` VALUES ('958', '150428', '喀喇沁旗', '150400');
INSERT INTO `region_info` VALUES ('959', '150429', '宁城县', '150400');
INSERT INTO `region_info` VALUES ('960', '150430', '敖汉旗', '150400');
INSERT INTO `region_info` VALUES ('961', '150501', '市辖区', '150500');
INSERT INTO `region_info` VALUES ('962', '150502', '科尔沁区', '150500');
INSERT INTO `region_info` VALUES ('963', '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `region_info` VALUES ('964', '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `region_info` VALUES ('965', '150523', '开鲁县', '150500');
INSERT INTO `region_info` VALUES ('966', '150524', '库伦旗', '150500');
INSERT INTO `region_info` VALUES ('967', '150525', '奈曼旗', '150500');
INSERT INTO `region_info` VALUES ('968', '150526', '扎鲁特旗', '150500');
INSERT INTO `region_info` VALUES ('969', '150581', '霍林郭勒市', '150500');
INSERT INTO `region_info` VALUES ('970', '150602', '东胜区', '150600');
INSERT INTO `region_info` VALUES ('971', '150621', '达拉特旗', '150600');
INSERT INTO `region_info` VALUES ('972', '150622', '准格尔旗', '150600');
INSERT INTO `region_info` VALUES ('973', '150623', '鄂托克前旗', '150600');
INSERT INTO `region_info` VALUES ('974', '150624', '鄂托克旗', '150600');
INSERT INTO `region_info` VALUES ('975', '150625', '杭锦旗', '150600');
INSERT INTO `region_info` VALUES ('976', '150626', '乌审旗', '150600');
INSERT INTO `region_info` VALUES ('977', '150627', '伊金霍洛旗', '150600');
INSERT INTO `region_info` VALUES ('978', '150701', '市辖区', '150700');
INSERT INTO `region_info` VALUES ('979', '150702', '海拉尔区', '150700');
INSERT INTO `region_info` VALUES ('980', '150721', '阿荣旗', '150700');
INSERT INTO `region_info` VALUES ('981', '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `region_info` VALUES ('982', '150723', '鄂伦春自治旗', '150700');
INSERT INTO `region_info` VALUES ('983', '150724', '鄂温克族自治旗', '150700');
INSERT INTO `region_info` VALUES ('984', '150725', '陈巴尔虎旗', '150700');
INSERT INTO `region_info` VALUES ('985', '150726', '新巴尔虎左旗', '150700');
INSERT INTO `region_info` VALUES ('986', '150727', '新巴尔虎右旗', '150700');
INSERT INTO `region_info` VALUES ('987', '150781', '满洲里市', '150700');
INSERT INTO `region_info` VALUES ('988', '150782', '牙克石市', '150700');
INSERT INTO `region_info` VALUES ('989', '150783', '扎兰屯市', '150700');
INSERT INTO `region_info` VALUES ('990', '150784', '额尔古纳市', '150700');
INSERT INTO `region_info` VALUES ('991', '150785', '根河市', '150700');
INSERT INTO `region_info` VALUES ('992', '150801', '市辖区', '150800');
INSERT INTO `region_info` VALUES ('993', '150802', '临河区', '150800');
INSERT INTO `region_info` VALUES ('994', '150821', '五原县', '150800');
INSERT INTO `region_info` VALUES ('995', '150822', '磴口县', '150800');
INSERT INTO `region_info` VALUES ('996', '150823', '乌拉特前旗', '150800');
INSERT INTO `region_info` VALUES ('997', '150824', '乌拉特中旗', '150800');
INSERT INTO `region_info` VALUES ('998', '150825', '乌拉特后旗', '150800');
INSERT INTO `region_info` VALUES ('999', '150826', '杭锦后旗', '150800');
INSERT INTO `region_info` VALUES ('1000', '150901', '市辖区', '150900');
INSERT INTO `region_info` VALUES ('1001', '150902', '集宁区', '150900');
INSERT INTO `region_info` VALUES ('1002', '150921', '卓资县', '150900');
INSERT INTO `region_info` VALUES ('1003', '150922', '化德县', '150900');
INSERT INTO `region_info` VALUES ('1004', '150923', '商都县', '150900');
INSERT INTO `region_info` VALUES ('1005', '150924', '兴和县', '150900');
INSERT INTO `region_info` VALUES ('1006', '150925', '凉城县', '150900');
INSERT INTO `region_info` VALUES ('1007', '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `region_info` VALUES ('1008', '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `region_info` VALUES ('1009', '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `region_info` VALUES ('1010', '150929', '四子王旗', '150900');
INSERT INTO `region_info` VALUES ('1011', '150981', '丰镇市', '150900');
INSERT INTO `region_info` VALUES ('1012', '152201', '乌兰浩特市', '152200');
INSERT INTO `region_info` VALUES ('1013', '152202', '阿尔山市', '152200');
INSERT INTO `region_info` VALUES ('1014', '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `region_info` VALUES ('1015', '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `region_info` VALUES ('1016', '152223', '扎赉特旗', '152200');
INSERT INTO `region_info` VALUES ('1017', '152224', '突泉县', '152200');
INSERT INTO `region_info` VALUES ('1018', '152501', '二连浩特市', '152500');
INSERT INTO `region_info` VALUES ('1019', '152502', '锡林浩特市', '152500');
INSERT INTO `region_info` VALUES ('1020', '152522', '阿巴嘎旗', '152500');
INSERT INTO `region_info` VALUES ('1021', '152523', '苏尼特左旗', '152500');
INSERT INTO `region_info` VALUES ('1022', '152524', '苏尼特右旗', '152500');
INSERT INTO `region_info` VALUES ('1023', '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `region_info` VALUES ('1024', '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `region_info` VALUES ('1025', '152527', '太仆寺旗', '152500');
INSERT INTO `region_info` VALUES ('1026', '152528', '镶黄旗', '152500');
INSERT INTO `region_info` VALUES ('1027', '152529', '正镶白旗', '152500');
INSERT INTO `region_info` VALUES ('1028', '152530', '正蓝旗', '152500');
INSERT INTO `region_info` VALUES ('1029', '152531', '多伦县', '152500');
INSERT INTO `region_info` VALUES ('1030', '152921', '阿拉善左旗', '152900');
INSERT INTO `region_info` VALUES ('1031', '152922', '阿拉善右旗', '152900');
INSERT INTO `region_info` VALUES ('1032', '152923', '额济纳旗', '152900');
INSERT INTO `region_info` VALUES ('1033', '210101', '市辖区', '210100');
INSERT INTO `region_info` VALUES ('1034', '210102', '和平区', '210100');
INSERT INTO `region_info` VALUES ('1035', '210103', '沈河区', '210100');
INSERT INTO `region_info` VALUES ('1036', '210104', '大东区', '210100');
INSERT INTO `region_info` VALUES ('1037', '210105', '皇姑区', '210100');
INSERT INTO `region_info` VALUES ('1038', '210106', '铁西区', '210100');
INSERT INTO `region_info` VALUES ('1039', '210111', '苏家屯区', '210100');
INSERT INTO `region_info` VALUES ('1040', '210112', '东陵区', '210100');
INSERT INTO `region_info` VALUES ('1041', '210113', '新城子区', '210100');
INSERT INTO `region_info` VALUES ('1042', '210114', '于洪区', '210100');
INSERT INTO `region_info` VALUES ('1043', '210122', '辽中县', '210100');
INSERT INTO `region_info` VALUES ('1044', '210123', '康平县', '210100');
INSERT INTO `region_info` VALUES ('1045', '210124', '法库县', '210100');
INSERT INTO `region_info` VALUES ('1046', '210181', '新民市', '210100');
INSERT INTO `region_info` VALUES ('1047', '210201', '市辖区', '210200');
INSERT INTO `region_info` VALUES ('1048', '210202', '中山区', '210200');
INSERT INTO `region_info` VALUES ('1049', '210203', '西岗区', '210200');
INSERT INTO `region_info` VALUES ('1050', '210204', '沙河口区', '210200');
INSERT INTO `region_info` VALUES ('1051', '210211', '甘井子区', '210200');
INSERT INTO `region_info` VALUES ('1052', '210212', '旅顺口区', '210200');
INSERT INTO `region_info` VALUES ('1053', '210213', '金州区', '210200');
INSERT INTO `region_info` VALUES ('1054', '210224', '长海县', '210200');
INSERT INTO `region_info` VALUES ('1055', '210281', '瓦房店市', '210200');
INSERT INTO `region_info` VALUES ('1056', '210282', '普兰店市', '210200');
INSERT INTO `region_info` VALUES ('1057', '210283', '庄河市', '210200');
INSERT INTO `region_info` VALUES ('1058', '210301', '市辖区', '210300');
INSERT INTO `region_info` VALUES ('1059', '210302', '铁东区', '210300');
INSERT INTO `region_info` VALUES ('1060', '210303', '铁西区', '210300');
INSERT INTO `region_info` VALUES ('1061', '210304', '立山区', '210300');
INSERT INTO `region_info` VALUES ('1062', '210311', '千山区', '210300');
INSERT INTO `region_info` VALUES ('1063', '210321', '台安县', '210300');
INSERT INTO `region_info` VALUES ('1064', '210323', '岫岩满族自治县', '210300');
INSERT INTO `region_info` VALUES ('1065', '210381', '海城市', '210300');
INSERT INTO `region_info` VALUES ('1066', '210401', '市辖区', '210400');
INSERT INTO `region_info` VALUES ('1067', '210402', '新抚区', '210400');
INSERT INTO `region_info` VALUES ('1068', '210403', '东洲区', '210400');
INSERT INTO `region_info` VALUES ('1069', '210404', '望花区', '210400');
INSERT INTO `region_info` VALUES ('1070', '210411', '顺城区', '210400');
INSERT INTO `region_info` VALUES ('1071', '210421', '抚顺县', '210400');
INSERT INTO `region_info` VALUES ('1072', '210422', '新宾满族自治县', '210400');
INSERT INTO `region_info` VALUES ('1073', '210423', '清原满族自治县', '210400');
INSERT INTO `region_info` VALUES ('1074', '210501', '市辖区', '210500');
INSERT INTO `region_info` VALUES ('1075', '210502', '平山区', '210500');
INSERT INTO `region_info` VALUES ('1076', '210503', '溪湖区', '210500');
INSERT INTO `region_info` VALUES ('1077', '210504', '明山区', '210500');
INSERT INTO `region_info` VALUES ('1078', '210505', '南芬区', '210500');
INSERT INTO `region_info` VALUES ('1079', '210521', '本溪满族自治县', '210500');
INSERT INTO `region_info` VALUES ('1080', '210522', '桓仁满族自治县', '210500');
INSERT INTO `region_info` VALUES ('1081', '210601', '市辖区', '210600');
INSERT INTO `region_info` VALUES ('1082', '210602', '元宝区', '210600');
INSERT INTO `region_info` VALUES ('1083', '210603', '振兴区', '210600');
INSERT INTO `region_info` VALUES ('1084', '210604', '振安区', '210600');
INSERT INTO `region_info` VALUES ('1085', '210624', '宽甸满族自治县', '210600');
INSERT INTO `region_info` VALUES ('1086', '210681', '东港市', '210600');
INSERT INTO `region_info` VALUES ('1087', '210682', '凤城市', '210600');
INSERT INTO `region_info` VALUES ('1088', '210701', '市辖区', '210700');
INSERT INTO `region_info` VALUES ('1089', '210702', '古塔区', '210700');
INSERT INTO `region_info` VALUES ('1090', '210703', '凌河区', '210700');
INSERT INTO `region_info` VALUES ('1091', '210711', '太和区', '210700');
INSERT INTO `region_info` VALUES ('1092', '210726', '黑山县', '210700');
INSERT INTO `region_info` VALUES ('1093', '210727', '义　县', '210700');
INSERT INTO `region_info` VALUES ('1094', '210781', '凌海市', '210700');
INSERT INTO `region_info` VALUES ('1095', '210782', '北宁市', '210700');
INSERT INTO `region_info` VALUES ('1096', '210801', '市辖区', '210800');
INSERT INTO `region_info` VALUES ('1097', '210802', '站前区', '210800');
INSERT INTO `region_info` VALUES ('1098', '210803', '西市区', '210800');
INSERT INTO `region_info` VALUES ('1099', '210804', '鲅鱼圈区', '210800');
INSERT INTO `region_info` VALUES ('1100', '210811', '老边区', '210800');
INSERT INTO `region_info` VALUES ('1101', '210881', '盖州市', '210800');
INSERT INTO `region_info` VALUES ('1102', '210882', '大石桥市', '210800');
INSERT INTO `region_info` VALUES ('1103', '210901', '市辖区', '210900');
INSERT INTO `region_info` VALUES ('1104', '210902', '海州区', '210900');
INSERT INTO `region_info` VALUES ('1105', '210903', '新邱区', '210900');
INSERT INTO `region_info` VALUES ('1106', '210904', '太平区', '210900');
INSERT INTO `region_info` VALUES ('1107', '210905', '清河门区', '210900');
INSERT INTO `region_info` VALUES ('1108', '210911', '细河区', '210900');
INSERT INTO `region_info` VALUES ('1109', '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `region_info` VALUES ('1110', '210922', '彰武县', '210900');
INSERT INTO `region_info` VALUES ('1111', '211001', '市辖区', '211000');
INSERT INTO `region_info` VALUES ('1112', '211002', '白塔区', '211000');
INSERT INTO `region_info` VALUES ('1113', '211003', '文圣区', '211000');
INSERT INTO `region_info` VALUES ('1114', '211004', '宏伟区', '211000');
INSERT INTO `region_info` VALUES ('1115', '211005', '弓长岭区', '211000');
INSERT INTO `region_info` VALUES ('1116', '211011', '太子河区', '211000');
INSERT INTO `region_info` VALUES ('1117', '211021', '辽阳县', '211000');
INSERT INTO `region_info` VALUES ('1118', '211081', '灯塔市', '211000');
INSERT INTO `region_info` VALUES ('1119', '211101', '市辖区', '211100');
INSERT INTO `region_info` VALUES ('1120', '211102', '双台子区', '211100');
INSERT INTO `region_info` VALUES ('1121', '211103', '兴隆台区', '211100');
INSERT INTO `region_info` VALUES ('1122', '211121', '大洼县', '211100');
INSERT INTO `region_info` VALUES ('1123', '211122', '盘山县', '211100');
INSERT INTO `region_info` VALUES ('1124', '211201', '市辖区', '211200');
INSERT INTO `region_info` VALUES ('1125', '211202', '银州区', '211200');
INSERT INTO `region_info` VALUES ('1126', '211204', '清河区', '211200');
INSERT INTO `region_info` VALUES ('1127', '211221', '铁岭县', '211200');
INSERT INTO `region_info` VALUES ('1128', '211223', '西丰县', '211200');
INSERT INTO `region_info` VALUES ('1129', '211224', '昌图县', '211200');
INSERT INTO `region_info` VALUES ('1130', '211281', '调兵山市', '211200');
INSERT INTO `region_info` VALUES ('1131', '211282', '开原市', '211200');
INSERT INTO `region_info` VALUES ('1132', '211301', '市辖区', '211300');
INSERT INTO `region_info` VALUES ('1133', '211302', '双塔区', '211300');
INSERT INTO `region_info` VALUES ('1134', '211303', '龙城区', '211300');
INSERT INTO `region_info` VALUES ('1135', '211321', '朝阳县', '211300');
INSERT INTO `region_info` VALUES ('1136', '211322', '建平县', '211300');
INSERT INTO `region_info` VALUES ('1137', '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `region_info` VALUES ('1138', '211381', '北票市', '211300');
INSERT INTO `region_info` VALUES ('1139', '211382', '凌源市', '211300');
INSERT INTO `region_info` VALUES ('1140', '211401', '市辖区', '211400');
INSERT INTO `region_info` VALUES ('1141', '211402', '连山区', '211400');
INSERT INTO `region_info` VALUES ('1142', '211403', '龙港区', '211400');
INSERT INTO `region_info` VALUES ('1143', '211404', '南票区', '211400');
INSERT INTO `region_info` VALUES ('1144', '211421', '绥中县', '211400');
INSERT INTO `region_info` VALUES ('1145', '211422', '建昌县', '211400');
INSERT INTO `region_info` VALUES ('1146', '211481', '兴城市', '211400');
INSERT INTO `region_info` VALUES ('1147', '220101', '市辖区', '220100');
INSERT INTO `region_info` VALUES ('1148', '220102', '南关区', '220100');
INSERT INTO `region_info` VALUES ('1149', '220103', '宽城区', '220100');
INSERT INTO `region_info` VALUES ('1150', '220104', '朝阳区', '220100');
INSERT INTO `region_info` VALUES ('1151', '220105', '二道区', '220100');
INSERT INTO `region_info` VALUES ('1152', '220106', '绿园区', '220100');
INSERT INTO `region_info` VALUES ('1153', '220112', '双阳区', '220100');
INSERT INTO `region_info` VALUES ('1154', '220122', '农安县', '220100');
INSERT INTO `region_info` VALUES ('1155', '220181', '九台市', '220100');
INSERT INTO `region_info` VALUES ('1156', '220182', '榆树市', '220100');
INSERT INTO `region_info` VALUES ('1157', '220183', '德惠市', '220100');
INSERT INTO `region_info` VALUES ('1158', '220201', '市辖区', '220200');
INSERT INTO `region_info` VALUES ('1159', '220202', '昌邑区', '220200');
INSERT INTO `region_info` VALUES ('1160', '220203', '龙潭区', '220200');
INSERT INTO `region_info` VALUES ('1161', '220204', '船营区', '220200');
INSERT INTO `region_info` VALUES ('1162', '220211', '丰满区', '220200');
INSERT INTO `region_info` VALUES ('1163', '220221', '永吉县', '220200');
INSERT INTO `region_info` VALUES ('1164', '220281', '蛟河市', '220200');
INSERT INTO `region_info` VALUES ('1165', '220282', '桦甸市', '220200');
INSERT INTO `region_info` VALUES ('1166', '220283', '舒兰市', '220200');
INSERT INTO `region_info` VALUES ('1167', '220284', '磐石市', '220200');
INSERT INTO `region_info` VALUES ('1168', '220301', '市辖区', '220300');
INSERT INTO `region_info` VALUES ('1169', '220302', '铁西区', '220300');
INSERT INTO `region_info` VALUES ('1170', '220303', '铁东区', '220300');
INSERT INTO `region_info` VALUES ('1171', '220322', '梨树县', '220300');
INSERT INTO `region_info` VALUES ('1172', '220323', '伊通满族自治县', '220300');
INSERT INTO `region_info` VALUES ('1173', '220381', '公主岭市', '220300');
INSERT INTO `region_info` VALUES ('1174', '220382', '双辽市', '220300');
INSERT INTO `region_info` VALUES ('1175', '220401', '市辖区', '220400');
INSERT INTO `region_info` VALUES ('1176', '220402', '龙山区', '220400');
INSERT INTO `region_info` VALUES ('1177', '220403', '西安区', '220400');
INSERT INTO `region_info` VALUES ('1178', '220421', '东丰县', '220400');
INSERT INTO `region_info` VALUES ('1179', '220422', '东辽县', '220400');
INSERT INTO `region_info` VALUES ('1180', '220501', '市辖区', '220500');
INSERT INTO `region_info` VALUES ('1181', '220502', '东昌区', '220500');
INSERT INTO `region_info` VALUES ('1182', '220503', '二道江区', '220500');
INSERT INTO `region_info` VALUES ('1183', '220521', '通化县', '220500');
INSERT INTO `region_info` VALUES ('1184', '220523', '辉南县', '220500');
INSERT INTO `region_info` VALUES ('1185', '220524', '柳河县', '220500');
INSERT INTO `region_info` VALUES ('1186', '220581', '梅河口市', '220500');
INSERT INTO `region_info` VALUES ('1187', '220582', '集安市', '220500');
INSERT INTO `region_info` VALUES ('1188', '220601', '市辖区', '220600');
INSERT INTO `region_info` VALUES ('1189', '220602', '八道江区', '220600');
INSERT INTO `region_info` VALUES ('1190', '220621', '抚松县', '220600');
INSERT INTO `region_info` VALUES ('1191', '220622', '靖宇县', '220600');
INSERT INTO `region_info` VALUES ('1192', '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `region_info` VALUES ('1193', '220625', '江源县', '220600');
INSERT INTO `region_info` VALUES ('1194', '220681', '临江市', '220600');
INSERT INTO `region_info` VALUES ('1195', '220701', '市辖区', '220700');
INSERT INTO `region_info` VALUES ('1196', '220702', '宁江区', '220700');
INSERT INTO `region_info` VALUES ('1197', '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `region_info` VALUES ('1198', '220722', '长岭县', '220700');
INSERT INTO `region_info` VALUES ('1199', '220723', '乾安县', '220700');
INSERT INTO `region_info` VALUES ('1200', '220724', '扶余县', '220700');
INSERT INTO `region_info` VALUES ('1201', '220801', '市辖区', '220800');
INSERT INTO `region_info` VALUES ('1202', '220802', '洮北区', '220800');
INSERT INTO `region_info` VALUES ('1203', '220821', '镇赉县', '220800');
INSERT INTO `region_info` VALUES ('1204', '220822', '通榆县', '220800');
INSERT INTO `region_info` VALUES ('1205', '220881', '洮南市', '220800');
INSERT INTO `region_info` VALUES ('1206', '220882', '大安市', '220800');
INSERT INTO `region_info` VALUES ('1207', '222401', '延吉市', '222400');
INSERT INTO `region_info` VALUES ('1208', '222402', '图们市', '222400');
INSERT INTO `region_info` VALUES ('1209', '222403', '敦化市', '222400');
INSERT INTO `region_info` VALUES ('1210', '222404', '珲春市', '222400');
INSERT INTO `region_info` VALUES ('1211', '222405', '龙井市', '222400');
INSERT INTO `region_info` VALUES ('1212', '222406', '和龙市', '222400');
INSERT INTO `region_info` VALUES ('1213', '222424', '汪清县', '222400');
INSERT INTO `region_info` VALUES ('1214', '222426', '安图县', '222400');
INSERT INTO `region_info` VALUES ('1215', '230101', '市辖区', '230100');
INSERT INTO `region_info` VALUES ('1216', '230102', '道里区', '230100');
INSERT INTO `region_info` VALUES ('1217', '230103', '南岗区', '230100');
INSERT INTO `region_info` VALUES ('1218', '230104', '道外区', '230100');
INSERT INTO `region_info` VALUES ('1219', '230106', '香坊区', '230100');
INSERT INTO `region_info` VALUES ('1220', '230107', '动力区', '230100');
INSERT INTO `region_info` VALUES ('1221', '230108', '平房区', '230100');
INSERT INTO `region_info` VALUES ('1222', '230109', '松北区', '230100');
INSERT INTO `region_info` VALUES ('1223', '230111', '呼兰区', '230100');
INSERT INTO `region_info` VALUES ('1224', '230123', '依兰县', '230100');
INSERT INTO `region_info` VALUES ('1225', '230124', '方正县', '230100');
INSERT INTO `region_info` VALUES ('1226', '230125', '宾　县', '230100');
INSERT INTO `region_info` VALUES ('1227', '230126', '巴彦县', '230100');
INSERT INTO `region_info` VALUES ('1228', '230127', '木兰县', '230100');
INSERT INTO `region_info` VALUES ('1229', '230128', '通河县', '230100');
INSERT INTO `region_info` VALUES ('1230', '230129', '延寿县', '230100');
INSERT INTO `region_info` VALUES ('1231', '230181', '阿城市', '230100');
INSERT INTO `region_info` VALUES ('1232', '230182', '双城市', '230100');
INSERT INTO `region_info` VALUES ('1233', '230183', '尚志市', '230100');
INSERT INTO `region_info` VALUES ('1234', '230184', '五常市', '230100');
INSERT INTO `region_info` VALUES ('1235', '230201', '市辖区', '230200');
INSERT INTO `region_info` VALUES ('1236', '230202', '龙沙区', '230200');
INSERT INTO `region_info` VALUES ('1237', '230203', '建华区', '230200');
INSERT INTO `region_info` VALUES ('1238', '230204', '铁锋区', '230200');
INSERT INTO `region_info` VALUES ('1239', '230205', '昂昂溪区', '230200');
INSERT INTO `region_info` VALUES ('1240', '230206', '富拉尔基区', '230200');
INSERT INTO `region_info` VALUES ('1241', '230207', '碾子山区', '230200');
INSERT INTO `region_info` VALUES ('1242', '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `region_info` VALUES ('1243', '230221', '龙江县', '230200');
INSERT INTO `region_info` VALUES ('1244', '230223', '依安县', '230200');
INSERT INTO `region_info` VALUES ('1245', '230224', '泰来县', '230200');
INSERT INTO `region_info` VALUES ('1246', '230225', '甘南县', '230200');
INSERT INTO `region_info` VALUES ('1247', '230227', '富裕县', '230200');
INSERT INTO `region_info` VALUES ('1248', '230229', '克山县', '230200');
INSERT INTO `region_info` VALUES ('1249', '230230', '克东县', '230200');
INSERT INTO `region_info` VALUES ('1250', '230231', '拜泉县', '230200');
INSERT INTO `region_info` VALUES ('1251', '230281', '讷河市', '230200');
INSERT INTO `region_info` VALUES ('1252', '230301', '市辖区', '230300');
INSERT INTO `region_info` VALUES ('1253', '230302', '鸡冠区', '230300');
INSERT INTO `region_info` VALUES ('1254', '230303', '恒山区', '230300');
INSERT INTO `region_info` VALUES ('1255', '230304', '滴道区', '230300');
INSERT INTO `region_info` VALUES ('1256', '230305', '梨树区', '230300');
INSERT INTO `region_info` VALUES ('1257', '230306', '城子河区', '230300');
INSERT INTO `region_info` VALUES ('1258', '230307', '麻山区', '230300');
INSERT INTO `region_info` VALUES ('1259', '230321', '鸡东县', '230300');
INSERT INTO `region_info` VALUES ('1260', '230381', '虎林市', '230300');
INSERT INTO `region_info` VALUES ('1261', '230382', '密山市', '230300');
INSERT INTO `region_info` VALUES ('1262', '230401', '市辖区', '230400');
INSERT INTO `region_info` VALUES ('1263', '230402', '向阳区', '230400');
INSERT INTO `region_info` VALUES ('1264', '230403', '工农区', '230400');
INSERT INTO `region_info` VALUES ('1265', '230404', '南山区', '230400');
INSERT INTO `region_info` VALUES ('1266', '230405', '兴安区', '230400');
INSERT INTO `region_info` VALUES ('1267', '230406', '东山区', '230400');
INSERT INTO `region_info` VALUES ('1268', '230407', '兴山区', '230400');
INSERT INTO `region_info` VALUES ('1269', '230421', '萝北县', '230400');
INSERT INTO `region_info` VALUES ('1270', '230422', '绥滨县', '230400');
INSERT INTO `region_info` VALUES ('1271', '230501', '市辖区', '230500');
INSERT INTO `region_info` VALUES ('1272', '230502', '尖山区', '230500');
INSERT INTO `region_info` VALUES ('1273', '230503', '岭东区', '230500');
INSERT INTO `region_info` VALUES ('1274', '230505', '四方台区', '230500');
INSERT INTO `region_info` VALUES ('1275', '230506', '宝山区', '230500');
INSERT INTO `region_info` VALUES ('1276', '230521', '集贤县', '230500');
INSERT INTO `region_info` VALUES ('1277', '230522', '友谊县', '230500');
INSERT INTO `region_info` VALUES ('1278', '230523', '宝清县', '230500');
INSERT INTO `region_info` VALUES ('1279', '230524', '饶河县', '230500');
INSERT INTO `region_info` VALUES ('1280', '230601', '市辖区', '230600');
INSERT INTO `region_info` VALUES ('1281', '230602', '萨尔图区', '230600');
INSERT INTO `region_info` VALUES ('1282', '230603', '龙凤区', '230600');
INSERT INTO `region_info` VALUES ('1283', '230604', '让胡路区', '230600');
INSERT INTO `region_info` VALUES ('1284', '230605', '红岗区', '230600');
INSERT INTO `region_info` VALUES ('1285', '230606', '大同区', '230600');
INSERT INTO `region_info` VALUES ('1286', '230621', '肇州县', '230600');
INSERT INTO `region_info` VALUES ('1287', '230622', '肇源县', '230600');
INSERT INTO `region_info` VALUES ('1288', '230623', '林甸县', '230600');
INSERT INTO `region_info` VALUES ('1289', '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `region_info` VALUES ('1290', '230701', '市辖区', '230700');
INSERT INTO `region_info` VALUES ('1291', '230702', '伊春区', '230700');
INSERT INTO `region_info` VALUES ('1292', '230703', '南岔区', '230700');
INSERT INTO `region_info` VALUES ('1293', '230704', '友好区', '230700');
INSERT INTO `region_info` VALUES ('1294', '230705', '西林区', '230700');
INSERT INTO `region_info` VALUES ('1295', '230706', '翠峦区', '230700');
INSERT INTO `region_info` VALUES ('1296', '230707', '新青区', '230700');
INSERT INTO `region_info` VALUES ('1297', '230708', '美溪区', '230700');
INSERT INTO `region_info` VALUES ('1298', '230709', '金山屯区', '230700');
INSERT INTO `region_info` VALUES ('1299', '230710', '五营区', '230700');
INSERT INTO `region_info` VALUES ('1300', '230711', '乌马河区', '230700');
INSERT INTO `region_info` VALUES ('1301', '230712', '汤旺河区', '230700');
INSERT INTO `region_info` VALUES ('1302', '230713', '带岭区', '230700');
INSERT INTO `region_info` VALUES ('1303', '230714', '乌伊岭区', '230700');
INSERT INTO `region_info` VALUES ('1304', '230715', '红星区', '230700');
INSERT INTO `region_info` VALUES ('1305', '230716', '上甘岭区', '230700');
INSERT INTO `region_info` VALUES ('1306', '230722', '嘉荫县', '230700');
INSERT INTO `region_info` VALUES ('1307', '230781', '铁力市', '230700');
INSERT INTO `region_info` VALUES ('1308', '230801', '市辖区', '230800');
INSERT INTO `region_info` VALUES ('1309', '230802', '永红区', '230800');
INSERT INTO `region_info` VALUES ('1310', '230803', '向阳区', '230800');
INSERT INTO `region_info` VALUES ('1311', '230804', '前进区', '230800');
INSERT INTO `region_info` VALUES ('1312', '230805', '东风区', '230800');
INSERT INTO `region_info` VALUES ('1313', '230811', '郊　区', '230800');
INSERT INTO `region_info` VALUES ('1314', '230822', '桦南县', '230800');
INSERT INTO `region_info` VALUES ('1315', '230826', '桦川县', '230800');
INSERT INTO `region_info` VALUES ('1316', '230828', '汤原县', '230800');
INSERT INTO `region_info` VALUES ('1317', '230833', '抚远县', '230800');
INSERT INTO `region_info` VALUES ('1318', '230881', '同江市', '230800');
INSERT INTO `region_info` VALUES ('1319', '230882', '富锦市', '230800');
INSERT INTO `region_info` VALUES ('1320', '230901', '市辖区', '230900');
INSERT INTO `region_info` VALUES ('1321', '230902', '新兴区', '230900');
INSERT INTO `region_info` VALUES ('1322', '230903', '桃山区', '230900');
INSERT INTO `region_info` VALUES ('1323', '230904', '茄子河区', '230900');
INSERT INTO `region_info` VALUES ('1324', '230921', '勃利县', '230900');
INSERT INTO `region_info` VALUES ('1325', '231001', '市辖区', '231000');
INSERT INTO `region_info` VALUES ('1326', '231002', '东安区', '231000');
INSERT INTO `region_info` VALUES ('1327', '231003', '阳明区', '231000');
INSERT INTO `region_info` VALUES ('1328', '231004', '爱民区', '231000');
INSERT INTO `region_info` VALUES ('1329', '231005', '西安区', '231000');
INSERT INTO `region_info` VALUES ('1330', '231024', '东宁县', '231000');
INSERT INTO `region_info` VALUES ('1331', '231025', '林口县', '231000');
INSERT INTO `region_info` VALUES ('1332', '231081', '绥芬河市', '231000');
INSERT INTO `region_info` VALUES ('1333', '231083', '海林市', '231000');
INSERT INTO `region_info` VALUES ('1334', '231084', '宁安市', '231000');
INSERT INTO `region_info` VALUES ('1335', '231085', '穆棱市', '231000');
INSERT INTO `region_info` VALUES ('1336', '231101', '市辖区', '231100');
INSERT INTO `region_info` VALUES ('1337', '231102', '爱辉区', '231100');
INSERT INTO `region_info` VALUES ('1338', '231121', '嫩江县', '231100');
INSERT INTO `region_info` VALUES ('1339', '231123', '逊克县', '231100');
INSERT INTO `region_info` VALUES ('1340', '231124', '孙吴县', '231100');
INSERT INTO `region_info` VALUES ('1341', '231181', '北安市', '231100');
INSERT INTO `region_info` VALUES ('1342', '231182', '五大连池市', '231100');
INSERT INTO `region_info` VALUES ('1343', '231201', '市辖区', '231200');
INSERT INTO `region_info` VALUES ('1344', '231202', '北林区', '231200');
INSERT INTO `region_info` VALUES ('1345', '231221', '望奎县', '231200');
INSERT INTO `region_info` VALUES ('1346', '231222', '兰西县', '231200');
INSERT INTO `region_info` VALUES ('1347', '231223', '青冈县', '231200');
INSERT INTO `region_info` VALUES ('1348', '231224', '庆安县', '231200');
INSERT INTO `region_info` VALUES ('1349', '231225', '明水县', '231200');
INSERT INTO `region_info` VALUES ('1350', '231226', '绥棱县', '231200');
INSERT INTO `region_info` VALUES ('1351', '231281', '安达市', '231200');
INSERT INTO `region_info` VALUES ('1352', '231282', '肇东市', '231200');
INSERT INTO `region_info` VALUES ('1353', '231283', '海伦市', '231200');
INSERT INTO `region_info` VALUES ('1354', '232721', '呼玛县', '232700');
INSERT INTO `region_info` VALUES ('1355', '232722', '塔河县', '232700');
INSERT INTO `region_info` VALUES ('1356', '232723', '漠河县', '232700');
INSERT INTO `region_info` VALUES ('1357', '310101', '黄浦区', '310100');
INSERT INTO `region_info` VALUES ('1358', '310103', '卢湾区', '310100');
INSERT INTO `region_info` VALUES ('1359', '310104', '徐汇区', '310100');
INSERT INTO `region_info` VALUES ('1360', '310105', '长宁区', '310100');
INSERT INTO `region_info` VALUES ('1361', '310106', '静安区', '310100');
INSERT INTO `region_info` VALUES ('1362', '310107', '普陀区', '310100');
INSERT INTO `region_info` VALUES ('1363', '310108', '闸北区', '310100');
INSERT INTO `region_info` VALUES ('1364', '310109', '虹口区', '310100');
INSERT INTO `region_info` VALUES ('1365', '310110', '杨浦区', '310100');
INSERT INTO `region_info` VALUES ('1366', '310112', '闵行区', '310100');
INSERT INTO `region_info` VALUES ('1367', '310113', '宝山区', '310100');
INSERT INTO `region_info` VALUES ('1368', '310114', '嘉定区', '310100');
INSERT INTO `region_info` VALUES ('1369', '310115', '浦东新区', '310100');
INSERT INTO `region_info` VALUES ('1370', '310116', '金山区', '310100');
INSERT INTO `region_info` VALUES ('1371', '310117', '松江区', '310100');
INSERT INTO `region_info` VALUES ('1372', '310118', '青浦区', '310100');
INSERT INTO `region_info` VALUES ('1373', '310119', '南汇区', '310100');
INSERT INTO `region_info` VALUES ('1374', '310120', '奉贤区', '310100');
INSERT INTO `region_info` VALUES ('1375', '310230', '崇明县', '310200');
INSERT INTO `region_info` VALUES ('1376', '320101', '市辖区', '320100');
INSERT INTO `region_info` VALUES ('1377', '320102', '玄武区', '320100');
INSERT INTO `region_info` VALUES ('1378', '320103', '白下区', '320100');
INSERT INTO `region_info` VALUES ('1379', '320104', '秦淮区', '320100');
INSERT INTO `region_info` VALUES ('1380', '320105', '建邺区', '320100');
INSERT INTO `region_info` VALUES ('1381', '320106', '鼓楼区', '320100');
INSERT INTO `region_info` VALUES ('1382', '320107', '下关区', '320100');
INSERT INTO `region_info` VALUES ('1383', '320111', '浦口区', '320100');
INSERT INTO `region_info` VALUES ('1384', '320113', '栖霞区', '320100');
INSERT INTO `region_info` VALUES ('1385', '320114', '雨花台区', '320100');
INSERT INTO `region_info` VALUES ('1386', '320115', '江宁区', '320100');
INSERT INTO `region_info` VALUES ('1387', '320116', '六合区', '320100');
INSERT INTO `region_info` VALUES ('1388', '320124', '溧水县', '320100');
INSERT INTO `region_info` VALUES ('1389', '320125', '高淳县', '320100');
INSERT INTO `region_info` VALUES ('1390', '320201', '市辖区', '320200');
INSERT INTO `region_info` VALUES ('1391', '320202', '崇安区', '320200');
INSERT INTO `region_info` VALUES ('1392', '320203', '南长区', '320200');
INSERT INTO `region_info` VALUES ('1393', '320204', '北塘区', '320200');
INSERT INTO `region_info` VALUES ('1394', '320205', '锡山区', '320200');
INSERT INTO `region_info` VALUES ('1395', '320206', '惠山区', '320200');
INSERT INTO `region_info` VALUES ('1396', '320211', '滨湖区', '320200');
INSERT INTO `region_info` VALUES ('1397', '320281', '江阴市', '320200');
INSERT INTO `region_info` VALUES ('1398', '320282', '宜兴市', '320200');
INSERT INTO `region_info` VALUES ('1399', '320301', '市辖区', '320300');
INSERT INTO `region_info` VALUES ('1400', '320302', '鼓楼区', '320300');
INSERT INTO `region_info` VALUES ('1401', '320303', '云龙区', '320300');
INSERT INTO `region_info` VALUES ('1402', '320304', '九里区', '320300');
INSERT INTO `region_info` VALUES ('1403', '320305', '贾汪区', '320300');
INSERT INTO `region_info` VALUES ('1404', '320311', '泉山区', '320300');
INSERT INTO `region_info` VALUES ('1405', '320321', '丰　县', '320300');
INSERT INTO `region_info` VALUES ('1406', '320322', '沛　县', '320300');
INSERT INTO `region_info` VALUES ('1407', '320323', '铜山县', '320300');
INSERT INTO `region_info` VALUES ('1408', '320324', '睢宁县', '320300');
INSERT INTO `region_info` VALUES ('1409', '320381', '新沂市', '320300');
INSERT INTO `region_info` VALUES ('1410', '320382', '邳州市', '320300');
INSERT INTO `region_info` VALUES ('1411', '320401', '市辖区', '320400');
INSERT INTO `region_info` VALUES ('1412', '320402', '天宁区', '320400');
INSERT INTO `region_info` VALUES ('1413', '320404', '钟楼区', '320400');
INSERT INTO `region_info` VALUES ('1414', '320405', '戚墅堰区', '320400');
INSERT INTO `region_info` VALUES ('1415', '320411', '新北区', '320400');
INSERT INTO `region_info` VALUES ('1416', '320412', '武进区', '320400');
INSERT INTO `region_info` VALUES ('1417', '320481', '溧阳市', '320400');
INSERT INTO `region_info` VALUES ('1418', '320482', '金坛市', '320400');
INSERT INTO `region_info` VALUES ('1419', '320501', '市辖区', '320500');
INSERT INTO `region_info` VALUES ('1420', '320502', '沧浪区', '320500');
INSERT INTO `region_info` VALUES ('1421', '320503', '平江区', '320500');
INSERT INTO `region_info` VALUES ('1422', '320504', '金阊区', '320500');
INSERT INTO `region_info` VALUES ('1423', '320505', '虎丘区', '320500');
INSERT INTO `region_info` VALUES ('1424', '320506', '吴中区', '320500');
INSERT INTO `region_info` VALUES ('1425', '320507', '相城区', '320500');
INSERT INTO `region_info` VALUES ('1426', '320581', '常熟市', '320500');
INSERT INTO `region_info` VALUES ('1427', '320582', '张家港市', '320500');
INSERT INTO `region_info` VALUES ('1428', '320583', '昆山市', '320500');
INSERT INTO `region_info` VALUES ('1429', '320584', '吴江市', '320500');
INSERT INTO `region_info` VALUES ('1430', '320585', '太仓市', '320500');
INSERT INTO `region_info` VALUES ('1431', '320601', '市辖区', '320600');
INSERT INTO `region_info` VALUES ('1432', '320602', '崇川区', '320600');
INSERT INTO `region_info` VALUES ('1433', '320611', '港闸区', '320600');
INSERT INTO `region_info` VALUES ('1434', '320621', '海安县', '320600');
INSERT INTO `region_info` VALUES ('1435', '320623', '如东县', '320600');
INSERT INTO `region_info` VALUES ('1436', '320681', '启东市', '320600');
INSERT INTO `region_info` VALUES ('1437', '320682', '如皋市', '320600');
INSERT INTO `region_info` VALUES ('1438', '320683', '通州市', '320600');
INSERT INTO `region_info` VALUES ('1439', '320684', '海门市', '320600');
INSERT INTO `region_info` VALUES ('1440', '320701', '市辖区', '320700');
INSERT INTO `region_info` VALUES ('1441', '320703', '连云区', '320700');
INSERT INTO `region_info` VALUES ('1442', '320705', '新浦区', '320700');
INSERT INTO `region_info` VALUES ('1443', '320706', '海州区', '320700');
INSERT INTO `region_info` VALUES ('1444', '320721', '赣榆县', '320700');
INSERT INTO `region_info` VALUES ('1445', '320722', '东海县', '320700');
INSERT INTO `region_info` VALUES ('1446', '320723', '灌云县', '320700');
INSERT INTO `region_info` VALUES ('1447', '320724', '灌南县', '320700');
INSERT INTO `region_info` VALUES ('1448', '320801', '市辖区', '320800');
INSERT INTO `region_info` VALUES ('1449', '320802', '清河区', '320800');
INSERT INTO `region_info` VALUES ('1450', '320803', '楚州区', '320800');
INSERT INTO `region_info` VALUES ('1451', '320804', '淮阴区', '320800');
INSERT INTO `region_info` VALUES ('1452', '320811', '清浦区', '320800');
INSERT INTO `region_info` VALUES ('1453', '320826', '涟水县', '320800');
INSERT INTO `region_info` VALUES ('1454', '320829', '洪泽县', '320800');
INSERT INTO `region_info` VALUES ('1455', '320830', '盱眙县', '320800');
INSERT INTO `region_info` VALUES ('1456', '320831', '金湖县', '320800');
INSERT INTO `region_info` VALUES ('1457', '320901', '市辖区', '320900');
INSERT INTO `region_info` VALUES ('1458', '320902', '亭湖区', '320900');
INSERT INTO `region_info` VALUES ('1459', '320903', '盐都区', '320900');
INSERT INTO `region_info` VALUES ('1460', '320921', '响水县', '320900');
INSERT INTO `region_info` VALUES ('1461', '320922', '滨海县', '320900');
INSERT INTO `region_info` VALUES ('1462', '320923', '阜宁县', '320900');
INSERT INTO `region_info` VALUES ('1463', '320924', '射阳县', '320900');
INSERT INTO `region_info` VALUES ('1464', '320925', '建湖县', '320900');
INSERT INTO `region_info` VALUES ('1465', '320981', '东台市', '320900');
INSERT INTO `region_info` VALUES ('1466', '320982', '大丰市', '320900');
INSERT INTO `region_info` VALUES ('1467', '321001', '市辖区', '321000');
INSERT INTO `region_info` VALUES ('1468', '321002', '广陵区', '321000');
INSERT INTO `region_info` VALUES ('1469', '321003', '邗江区', '321000');
INSERT INTO `region_info` VALUES ('1470', '321011', '郊　区', '321000');
INSERT INTO `region_info` VALUES ('1471', '321023', '宝应县', '321000');
INSERT INTO `region_info` VALUES ('1472', '321081', '仪征市', '321000');
INSERT INTO `region_info` VALUES ('1473', '321084', '高邮市', '321000');
INSERT INTO `region_info` VALUES ('1474', '321088', '江都市', '321000');
INSERT INTO `region_info` VALUES ('1475', '321101', '市辖区', '321100');
INSERT INTO `region_info` VALUES ('1476', '321102', '京口区', '321100');
INSERT INTO `region_info` VALUES ('1477', '321111', '润州区', '321100');
INSERT INTO `region_info` VALUES ('1478', '321112', '丹徒区', '321100');
INSERT INTO `region_info` VALUES ('1479', '321181', '丹阳市', '321100');
INSERT INTO `region_info` VALUES ('1480', '321182', '扬中市', '321100');
INSERT INTO `region_info` VALUES ('1481', '321183', '句容市', '321100');
INSERT INTO `region_info` VALUES ('1482', '321201', '市辖区', '321200');
INSERT INTO `region_info` VALUES ('1483', '321202', '海陵区', '321200');
INSERT INTO `region_info` VALUES ('1484', '321203', '高港区', '321200');
INSERT INTO `region_info` VALUES ('1485', '321281', '兴化市', '321200');
INSERT INTO `region_info` VALUES ('1486', '321282', '靖江市', '321200');
INSERT INTO `region_info` VALUES ('1487', '321283', '泰兴市', '321200');
INSERT INTO `region_info` VALUES ('1488', '321284', '姜堰市', '321200');
INSERT INTO `region_info` VALUES ('1489', '321301', '市辖区', '321300');
INSERT INTO `region_info` VALUES ('1490', '321302', '宿城区', '321300');
INSERT INTO `region_info` VALUES ('1491', '321311', '宿豫区', '321300');
INSERT INTO `region_info` VALUES ('1492', '321322', '沭阳县', '321300');
INSERT INTO `region_info` VALUES ('1493', '321323', '泗阳县', '321300');
INSERT INTO `region_info` VALUES ('1494', '321324', '泗洪县', '321300');
INSERT INTO `region_info` VALUES ('1495', '330101', '市辖区', '330100');
INSERT INTO `region_info` VALUES ('1496', '330102', '上城区', '330100');
INSERT INTO `region_info` VALUES ('1497', '330103', '下城区', '330100');
INSERT INTO `region_info` VALUES ('1498', '330104', '江干区', '330100');
INSERT INTO `region_info` VALUES ('1499', '330105', '拱墅区', '330100');
INSERT INTO `region_info` VALUES ('1500', '330106', '西湖区', '330100');
INSERT INTO `region_info` VALUES ('1501', '330108', '滨江区', '330100');
INSERT INTO `region_info` VALUES ('1502', '330109', '萧山区', '330100');
INSERT INTO `region_info` VALUES ('1503', '330110', '余杭区', '330100');
INSERT INTO `region_info` VALUES ('1504', '330122', '桐庐县', '330100');
INSERT INTO `region_info` VALUES ('1505', '330127', '淳安县', '330100');
INSERT INTO `region_info` VALUES ('1506', '330182', '建德市', '330100');
INSERT INTO `region_info` VALUES ('1507', '330183', '富阳市', '330100');
INSERT INTO `region_info` VALUES ('1508', '330185', '临安市', '330100');
INSERT INTO `region_info` VALUES ('1509', '330201', '市辖区', '330200');
INSERT INTO `region_info` VALUES ('1510', '330203', '海曙区', '330200');
INSERT INTO `region_info` VALUES ('1511', '330204', '江东区', '330200');
INSERT INTO `region_info` VALUES ('1512', '330205', '江北区', '330200');
INSERT INTO `region_info` VALUES ('1513', '330206', '北仑区', '330200');
INSERT INTO `region_info` VALUES ('1514', '330211', '镇海区', '330200');
INSERT INTO `region_info` VALUES ('1515', '330212', '鄞州区', '330200');
INSERT INTO `region_info` VALUES ('1516', '330225', '象山县', '330200');
INSERT INTO `region_info` VALUES ('1517', '330226', '宁海县', '330200');
INSERT INTO `region_info` VALUES ('1518', '330281', '余姚市', '330200');
INSERT INTO `region_info` VALUES ('1519', '330282', '慈溪市', '330200');
INSERT INTO `region_info` VALUES ('1520', '330283', '奉化市', '330200');
INSERT INTO `region_info` VALUES ('1521', '330301', '市辖区', '330300');
INSERT INTO `region_info` VALUES ('1522', '330302', '鹿城区', '330300');
INSERT INTO `region_info` VALUES ('1523', '330303', '龙湾区', '330300');
INSERT INTO `region_info` VALUES ('1524', '330304', '瓯海区', '330300');
INSERT INTO `region_info` VALUES ('1525', '330322', '洞头县', '330300');
INSERT INTO `region_info` VALUES ('1526', '330324', '永嘉县', '330300');
INSERT INTO `region_info` VALUES ('1527', '330326', '平阳县', '330300');
INSERT INTO `region_info` VALUES ('1528', '330327', '苍南县', '330300');
INSERT INTO `region_info` VALUES ('1529', '330328', '文成县', '330300');
INSERT INTO `region_info` VALUES ('1530', '330329', '泰顺县', '330300');
INSERT INTO `region_info` VALUES ('1531', '330381', '瑞安市', '330300');
INSERT INTO `region_info` VALUES ('1532', '330382', '乐清市', '330300');
INSERT INTO `region_info` VALUES ('1533', '330401', '市辖区', '330400');
INSERT INTO `region_info` VALUES ('1534', '330402', '秀城区', '330400');
INSERT INTO `region_info` VALUES ('1535', '330411', '秀洲区', '330400');
INSERT INTO `region_info` VALUES ('1536', '330421', '嘉善县', '330400');
INSERT INTO `region_info` VALUES ('1537', '330424', '海盐县', '330400');
INSERT INTO `region_info` VALUES ('1538', '330481', '海宁市', '330400');
INSERT INTO `region_info` VALUES ('1539', '330482', '平湖市', '330400');
INSERT INTO `region_info` VALUES ('1540', '330483', '桐乡市', '330400');
INSERT INTO `region_info` VALUES ('1541', '330501', '市辖区', '330500');
INSERT INTO `region_info` VALUES ('1542', '330502', '吴兴区', '330500');
INSERT INTO `region_info` VALUES ('1543', '330503', '南浔区', '330500');
INSERT INTO `region_info` VALUES ('1544', '330521', '德清县', '330500');
INSERT INTO `region_info` VALUES ('1545', '330522', '长兴县', '330500');
INSERT INTO `region_info` VALUES ('1546', '330523', '安吉县', '330500');
INSERT INTO `region_info` VALUES ('1547', '330601', '市辖区', '330600');
INSERT INTO `region_info` VALUES ('1548', '330602', '越城区', '330600');
INSERT INTO `region_info` VALUES ('1549', '330621', '绍兴县', '330600');
INSERT INTO `region_info` VALUES ('1550', '330624', '新昌县', '330600');
INSERT INTO `region_info` VALUES ('1551', '330681', '诸暨市', '330600');
INSERT INTO `region_info` VALUES ('1552', '330682', '上虞市', '330600');
INSERT INTO `region_info` VALUES ('1553', '330683', '嵊州市', '330600');
INSERT INTO `region_info` VALUES ('1554', '330701', '市辖区', '330700');
INSERT INTO `region_info` VALUES ('1555', '330702', '婺城区', '330700');
INSERT INTO `region_info` VALUES ('1556', '330703', '金东区', '330700');
INSERT INTO `region_info` VALUES ('1557', '330723', '武义县', '330700');
INSERT INTO `region_info` VALUES ('1558', '330726', '浦江县', '330700');
INSERT INTO `region_info` VALUES ('1559', '330727', '磐安县', '330700');
INSERT INTO `region_info` VALUES ('1560', '330781', '兰溪市', '330700');
INSERT INTO `region_info` VALUES ('1561', '330782', '义乌市', '330700');
INSERT INTO `region_info` VALUES ('1562', '330783', '东阳市', '330700');
INSERT INTO `region_info` VALUES ('1563', '330784', '永康市', '330700');
INSERT INTO `region_info` VALUES ('1564', '330801', '市辖区', '330800');
INSERT INTO `region_info` VALUES ('1565', '330802', '柯城区', '330800');
INSERT INTO `region_info` VALUES ('1566', '330803', '衢江区', '330800');
INSERT INTO `region_info` VALUES ('1567', '330822', '常山县', '330800');
INSERT INTO `region_info` VALUES ('1568', '330824', '开化县', '330800');
INSERT INTO `region_info` VALUES ('1569', '330825', '龙游县', '330800');
INSERT INTO `region_info` VALUES ('1570', '330881', '江山市', '330800');
INSERT INTO `region_info` VALUES ('1571', '330901', '市辖区', '330900');
INSERT INTO `region_info` VALUES ('1572', '330902', '定海区', '330900');
INSERT INTO `region_info` VALUES ('1573', '330903', '普陀区', '330900');
INSERT INTO `region_info` VALUES ('1574', '330921', '岱山县', '330900');
INSERT INTO `region_info` VALUES ('1575', '330922', '嵊泗县', '330900');
INSERT INTO `region_info` VALUES ('1576', '331001', '市辖区', '331000');
INSERT INTO `region_info` VALUES ('1577', '331002', '椒江区', '331000');
INSERT INTO `region_info` VALUES ('1578', '331003', '黄岩区', '331000');
INSERT INTO `region_info` VALUES ('1579', '331004', '路桥区', '331000');
INSERT INTO `region_info` VALUES ('1580', '331021', '玉环县', '331000');
INSERT INTO `region_info` VALUES ('1581', '331022', '三门县', '331000');
INSERT INTO `region_info` VALUES ('1582', '331023', '天台县', '331000');
INSERT INTO `region_info` VALUES ('1583', '331024', '仙居县', '331000');
INSERT INTO `region_info` VALUES ('1584', '331081', '温岭市', '331000');
INSERT INTO `region_info` VALUES ('1585', '331082', '临海市', '331000');
INSERT INTO `region_info` VALUES ('1586', '331101', '市辖区', '331100');
INSERT INTO `region_info` VALUES ('1587', '331102', '莲都区', '331100');
INSERT INTO `region_info` VALUES ('1588', '331121', '青田县', '331100');
INSERT INTO `region_info` VALUES ('1589', '331122', '缙云县', '331100');
INSERT INTO `region_info` VALUES ('1590', '331123', '遂昌县', '331100');
INSERT INTO `region_info` VALUES ('1591', '331124', '松阳县', '331100');
INSERT INTO `region_info` VALUES ('1592', '331125', '云和县', '331100');
INSERT INTO `region_info` VALUES ('1593', '331126', '庆元县', '331100');
INSERT INTO `region_info` VALUES ('1594', '331127', '景宁畲族自治县', '331100');
INSERT INTO `region_info` VALUES ('1595', '331181', '龙泉市', '331100');
INSERT INTO `region_info` VALUES ('1596', '340101', '市辖区', '340100');
INSERT INTO `region_info` VALUES ('1597', '340102', '瑶海区', '340100');
INSERT INTO `region_info` VALUES ('1598', '340103', '庐阳区', '340100');
INSERT INTO `region_info` VALUES ('1599', '340104', '蜀山区', '340100');
INSERT INTO `region_info` VALUES ('1600', '340111', '包河区', '340100');
INSERT INTO `region_info` VALUES ('1601', '340121', '长丰县', '340100');
INSERT INTO `region_info` VALUES ('1602', '340122', '肥东县', '340100');
INSERT INTO `region_info` VALUES ('1603', '340123', '肥西县', '340100');
INSERT INTO `region_info` VALUES ('1604', '340201', '市辖区', '340200');
INSERT INTO `region_info` VALUES ('1605', '340202', '镜湖区', '340200');
INSERT INTO `region_info` VALUES ('1606', '340203', '马塘区', '340200');
INSERT INTO `region_info` VALUES ('1607', '340204', '新芜区', '340200');
INSERT INTO `region_info` VALUES ('1608', '340207', '鸠江区', '340200');
INSERT INTO `region_info` VALUES ('1609', '340221', '芜湖县', '340200');
INSERT INTO `region_info` VALUES ('1610', '340222', '繁昌县', '340200');
INSERT INTO `region_info` VALUES ('1611', '340223', '南陵县', '340200');
INSERT INTO `region_info` VALUES ('1612', '340301', '市辖区', '340300');
INSERT INTO `region_info` VALUES ('1613', '340302', '龙子湖区', '340300');
INSERT INTO `region_info` VALUES ('1614', '340303', '蚌山区', '340300');
INSERT INTO `region_info` VALUES ('1615', '340304', '禹会区', '340300');
INSERT INTO `region_info` VALUES ('1616', '340311', '淮上区', '340300');
INSERT INTO `region_info` VALUES ('1617', '340321', '怀远县', '340300');
INSERT INTO `region_info` VALUES ('1618', '340322', '五河县', '340300');
INSERT INTO `region_info` VALUES ('1619', '340323', '固镇县', '340300');
INSERT INTO `region_info` VALUES ('1620', '340401', '市辖区', '340400');
INSERT INTO `region_info` VALUES ('1621', '340402', '大通区', '340400');
INSERT INTO `region_info` VALUES ('1622', '340403', '田家庵区', '340400');
INSERT INTO `region_info` VALUES ('1623', '340404', '谢家集区', '340400');
INSERT INTO `region_info` VALUES ('1624', '340405', '八公山区', '340400');
INSERT INTO `region_info` VALUES ('1625', '340406', '潘集区', '340400');
INSERT INTO `region_info` VALUES ('1626', '340421', '凤台县', '340400');
INSERT INTO `region_info` VALUES ('1627', '340501', '市辖区', '340500');
INSERT INTO `region_info` VALUES ('1628', '340502', '金家庄区', '340500');
INSERT INTO `region_info` VALUES ('1629', '340503', '花山区', '340500');
INSERT INTO `region_info` VALUES ('1630', '340504', '雨山区', '340500');
INSERT INTO `region_info` VALUES ('1631', '340521', '当涂县', '340500');
INSERT INTO `region_info` VALUES ('1632', '340601', '市辖区', '340600');
INSERT INTO `region_info` VALUES ('1633', '340602', '杜集区', '340600');
INSERT INTO `region_info` VALUES ('1634', '340603', '相山区', '340600');
INSERT INTO `region_info` VALUES ('1635', '340604', '烈山区', '340600');
INSERT INTO `region_info` VALUES ('1636', '340621', '濉溪县', '340600');
INSERT INTO `region_info` VALUES ('1637', '340701', '市辖区', '340700');
INSERT INTO `region_info` VALUES ('1638', '340702', '铜官山区', '340700');
INSERT INTO `region_info` VALUES ('1639', '340703', '狮子山区', '340700');
INSERT INTO `region_info` VALUES ('1640', '340711', '郊　区', '340700');
INSERT INTO `region_info` VALUES ('1641', '340721', '铜陵县', '340700');
INSERT INTO `region_info` VALUES ('1642', '340801', '市辖区', '340800');
INSERT INTO `region_info` VALUES ('1643', '340802', '迎江区', '340800');
INSERT INTO `region_info` VALUES ('1644', '340803', '大观区', '340800');
INSERT INTO `region_info` VALUES ('1645', '340811', '郊　区', '340800');
INSERT INTO `region_info` VALUES ('1646', '340822', '怀宁县', '340800');
INSERT INTO `region_info` VALUES ('1647', '340823', '枞阳县', '340800');
INSERT INTO `region_info` VALUES ('1648', '340824', '潜山县', '340800');
INSERT INTO `region_info` VALUES ('1649', '340825', '太湖县', '340800');
INSERT INTO `region_info` VALUES ('1650', '340826', '宿松县', '340800');
INSERT INTO `region_info` VALUES ('1651', '340827', '望江县', '340800');
INSERT INTO `region_info` VALUES ('1652', '340828', '岳西县', '340800');
INSERT INTO `region_info` VALUES ('1653', '340881', '桐城市', '340800');
INSERT INTO `region_info` VALUES ('1654', '341001', '市辖区', '341000');
INSERT INTO `region_info` VALUES ('1655', '341002', '屯溪区', '341000');
INSERT INTO `region_info` VALUES ('1656', '341003', '黄山区', '341000');
INSERT INTO `region_info` VALUES ('1657', '341004', '徽州区', '341000');
INSERT INTO `region_info` VALUES ('1658', '341021', '歙　县', '341000');
INSERT INTO `region_info` VALUES ('1659', '341022', '休宁县', '341000');
INSERT INTO `region_info` VALUES ('1660', '341023', '黟　县', '341000');
INSERT INTO `region_info` VALUES ('1661', '341024', '祁门县', '341000');
INSERT INTO `region_info` VALUES ('1662', '341101', '市辖区', '341100');
INSERT INTO `region_info` VALUES ('1663', '341102', '琅琊区', '341100');
INSERT INTO `region_info` VALUES ('1664', '341103', '南谯区', '341100');
INSERT INTO `region_info` VALUES ('1665', '341122', '来安县', '341100');
INSERT INTO `region_info` VALUES ('1666', '341124', '全椒县', '341100');
INSERT INTO `region_info` VALUES ('1667', '341125', '定远县', '341100');
INSERT INTO `region_info` VALUES ('1668', '341126', '凤阳县', '341100');
INSERT INTO `region_info` VALUES ('1669', '341181', '天长市', '341100');
INSERT INTO `region_info` VALUES ('1670', '341182', '明光市', '341100');
INSERT INTO `region_info` VALUES ('1671', '341201', '市辖区', '341200');
INSERT INTO `region_info` VALUES ('1672', '341202', '颍州区', '341200');
INSERT INTO `region_info` VALUES ('1673', '341203', '颍东区', '341200');
INSERT INTO `region_info` VALUES ('1674', '341204', '颍泉区', '341200');
INSERT INTO `region_info` VALUES ('1675', '341221', '临泉县', '341200');
INSERT INTO `region_info` VALUES ('1676', '341222', '太和县', '341200');
INSERT INTO `region_info` VALUES ('1677', '341225', '阜南县', '341200');
INSERT INTO `region_info` VALUES ('1678', '341226', '颍上县', '341200');
INSERT INTO `region_info` VALUES ('1679', '341282', '界首市', '341200');
INSERT INTO `region_info` VALUES ('1680', '341301', '市辖区', '341300');
INSERT INTO `region_info` VALUES ('1681', '341302', '墉桥区', '341300');
INSERT INTO `region_info` VALUES ('1682', '341321', '砀山县', '341300');
INSERT INTO `region_info` VALUES ('1683', '341322', '萧　县', '341300');
INSERT INTO `region_info` VALUES ('1684', '341323', '灵璧县', '341300');
INSERT INTO `region_info` VALUES ('1685', '341324', '泗　县', '341300');
INSERT INTO `region_info` VALUES ('1686', '341401', '市辖区', '341400');
INSERT INTO `region_info` VALUES ('1687', '341402', '居巢区', '341400');
INSERT INTO `region_info` VALUES ('1688', '341421', '庐江县', '341400');
INSERT INTO `region_info` VALUES ('1689', '341422', '无为县', '341400');
INSERT INTO `region_info` VALUES ('1690', '341423', '含山县', '341400');
INSERT INTO `region_info` VALUES ('1691', '341424', '和　县', '341400');
INSERT INTO `region_info` VALUES ('1692', '341501', '市辖区', '341500');
INSERT INTO `region_info` VALUES ('1693', '341502', '金安区', '341500');
INSERT INTO `region_info` VALUES ('1694', '341503', '裕安区', '341500');
INSERT INTO `region_info` VALUES ('1695', '341521', '寿　县', '341500');
INSERT INTO `region_info` VALUES ('1696', '341522', '霍邱县', '341500');
INSERT INTO `region_info` VALUES ('1697', '341523', '舒城县', '341500');
INSERT INTO `region_info` VALUES ('1698', '341524', '金寨县', '341500');
INSERT INTO `region_info` VALUES ('1699', '341525', '霍山县', '341500');
INSERT INTO `region_info` VALUES ('1700', '341601', '市辖区', '341600');
INSERT INTO `region_info` VALUES ('1701', '341602', '谯城区', '341600');
INSERT INTO `region_info` VALUES ('1702', '341621', '涡阳县', '341600');
INSERT INTO `region_info` VALUES ('1703', '341622', '蒙城县', '341600');
INSERT INTO `region_info` VALUES ('1704', '341623', '利辛县', '341600');
INSERT INTO `region_info` VALUES ('1705', '341701', '市辖区', '341700');
INSERT INTO `region_info` VALUES ('1706', '341702', '贵池区', '341700');
INSERT INTO `region_info` VALUES ('1707', '341721', '东至县', '341700');
INSERT INTO `region_info` VALUES ('1708', '341722', '石台县', '341700');
INSERT INTO `region_info` VALUES ('1709', '341723', '青阳县', '341700');
INSERT INTO `region_info` VALUES ('1710', '341801', '市辖区', '341800');
INSERT INTO `region_info` VALUES ('1711', '341802', '宣州区', '341800');
INSERT INTO `region_info` VALUES ('1712', '341821', '郎溪县', '341800');
INSERT INTO `region_info` VALUES ('1713', '341822', '广德县', '341800');
INSERT INTO `region_info` VALUES ('1714', '341823', '泾　县', '341800');
INSERT INTO `region_info` VALUES ('1715', '341824', '绩溪县', '341800');
INSERT INTO `region_info` VALUES ('1716', '341825', '旌德县', '341800');
INSERT INTO `region_info` VALUES ('1717', '341881', '宁国市', '341800');
INSERT INTO `region_info` VALUES ('1718', '350101', '市辖区', '350100');
INSERT INTO `region_info` VALUES ('1719', '350102', '鼓楼区', '350100');
INSERT INTO `region_info` VALUES ('1720', '350103', '台江区', '350100');
INSERT INTO `region_info` VALUES ('1721', '350104', '仓山区', '350100');
INSERT INTO `region_info` VALUES ('1722', '350105', '马尾区', '350100');
INSERT INTO `region_info` VALUES ('1723', '350111', '晋安区', '350100');
INSERT INTO `region_info` VALUES ('1724', '350121', '闽侯县', '350100');
INSERT INTO `region_info` VALUES ('1725', '350122', '连江县', '350100');
INSERT INTO `region_info` VALUES ('1726', '350123', '罗源县', '350100');
INSERT INTO `region_info` VALUES ('1727', '350124', '闽清县', '350100');
INSERT INTO `region_info` VALUES ('1728', '350125', '永泰县', '350100');
INSERT INTO `region_info` VALUES ('1729', '350128', '平潭县', '350100');
INSERT INTO `region_info` VALUES ('1730', '350181', '福清市', '350100');
INSERT INTO `region_info` VALUES ('1731', '350182', '长乐市', '350100');
INSERT INTO `region_info` VALUES ('1732', '350201', '市辖区', '350200');
INSERT INTO `region_info` VALUES ('1733', '350203', '思明区', '350200');
INSERT INTO `region_info` VALUES ('1734', '350205', '海沧区', '350200');
INSERT INTO `region_info` VALUES ('1735', '350206', '湖里区', '350200');
INSERT INTO `region_info` VALUES ('1736', '350211', '集美区', '350200');
INSERT INTO `region_info` VALUES ('1737', '350212', '同安区', '350200');
INSERT INTO `region_info` VALUES ('1738', '350213', '翔安区', '350200');
INSERT INTO `region_info` VALUES ('1739', '350301', '市辖区', '350300');
INSERT INTO `region_info` VALUES ('1740', '350302', '城厢区', '350300');
INSERT INTO `region_info` VALUES ('1741', '350303', '涵江区', '350300');
INSERT INTO `region_info` VALUES ('1742', '350304', '荔城区', '350300');
INSERT INTO `region_info` VALUES ('1743', '350305', '秀屿区', '350300');
INSERT INTO `region_info` VALUES ('1744', '350322', '仙游县', '350300');
INSERT INTO `region_info` VALUES ('1745', '350401', '市辖区', '350400');
INSERT INTO `region_info` VALUES ('1746', '350402', '梅列区', '350400');
INSERT INTO `region_info` VALUES ('1747', '350403', '三元区', '350400');
INSERT INTO `region_info` VALUES ('1748', '350421', '明溪县', '350400');
INSERT INTO `region_info` VALUES ('1749', '350423', '清流县', '350400');
INSERT INTO `region_info` VALUES ('1750', '350424', '宁化县', '350400');
INSERT INTO `region_info` VALUES ('1751', '350425', '大田县', '350400');
INSERT INTO `region_info` VALUES ('1752', '350426', '尤溪县', '350400');
INSERT INTO `region_info` VALUES ('1753', '350427', '沙　县', '350400');
INSERT INTO `region_info` VALUES ('1754', '350428', '将乐县', '350400');
INSERT INTO `region_info` VALUES ('1755', '350429', '泰宁县', '350400');
INSERT INTO `region_info` VALUES ('1756', '350430', '建宁县', '350400');
INSERT INTO `region_info` VALUES ('1757', '350481', '永安市', '350400');
INSERT INTO `region_info` VALUES ('1758', '350501', '市辖区', '350500');
INSERT INTO `region_info` VALUES ('1759', '350502', '鲤城区', '350500');
INSERT INTO `region_info` VALUES ('1760', '350503', '丰泽区', '350500');
INSERT INTO `region_info` VALUES ('1761', '350504', '洛江区', '350500');
INSERT INTO `region_info` VALUES ('1762', '350505', '泉港区', '350500');
INSERT INTO `region_info` VALUES ('1763', '350521', '惠安县', '350500');
INSERT INTO `region_info` VALUES ('1764', '350524', '安溪县', '350500');
INSERT INTO `region_info` VALUES ('1765', '350525', '永春县', '350500');
INSERT INTO `region_info` VALUES ('1766', '350526', '德化县', '350500');
INSERT INTO `region_info` VALUES ('1767', '350527', '金门县', '350500');
INSERT INTO `region_info` VALUES ('1768', '350581', '石狮市', '350500');
INSERT INTO `region_info` VALUES ('1769', '350582', '晋江市', '350500');
INSERT INTO `region_info` VALUES ('1770', '350583', '南安市', '350500');
INSERT INTO `region_info` VALUES ('1771', '350601', '市辖区', '350600');
INSERT INTO `region_info` VALUES ('1772', '350602', '芗城区', '350600');
INSERT INTO `region_info` VALUES ('1773', '350603', '龙文区', '350600');
INSERT INTO `region_info` VALUES ('1774', '350622', '云霄县', '350600');
INSERT INTO `region_info` VALUES ('1775', '350623', '漳浦县', '350600');
INSERT INTO `region_info` VALUES ('1776', '350624', '诏安县', '350600');
INSERT INTO `region_info` VALUES ('1777', '350625', '长泰县', '350600');
INSERT INTO `region_info` VALUES ('1778', '350626', '东山县', '350600');
INSERT INTO `region_info` VALUES ('1779', '350627', '南靖县', '350600');
INSERT INTO `region_info` VALUES ('1780', '350628', '平和县', '350600');
INSERT INTO `region_info` VALUES ('1781', '350629', '华安县', '350600');
INSERT INTO `region_info` VALUES ('1782', '350681', '龙海市', '350600');
INSERT INTO `region_info` VALUES ('1783', '350701', '市辖区', '350700');
INSERT INTO `region_info` VALUES ('1784', '350702', '延平区', '350700');
INSERT INTO `region_info` VALUES ('1785', '350721', '顺昌县', '350700');
INSERT INTO `region_info` VALUES ('1786', '350722', '浦城县', '350700');
INSERT INTO `region_info` VALUES ('1787', '350723', '光泽县', '350700');
INSERT INTO `region_info` VALUES ('1788', '350724', '松溪县', '350700');
INSERT INTO `region_info` VALUES ('1789', '350725', '政和县', '350700');
INSERT INTO `region_info` VALUES ('1790', '350781', '邵武市', '350700');
INSERT INTO `region_info` VALUES ('1791', '350782', '武夷山市', '350700');
INSERT INTO `region_info` VALUES ('1792', '350783', '建瓯市', '350700');
INSERT INTO `region_info` VALUES ('1793', '350784', '建阳市', '350700');
INSERT INTO `region_info` VALUES ('1794', '350801', '市辖区', '350800');
INSERT INTO `region_info` VALUES ('1795', '350802', '新罗区', '350800');
INSERT INTO `region_info` VALUES ('1796', '350821', '长汀县', '350800');
INSERT INTO `region_info` VALUES ('1797', '350822', '永定县', '350800');
INSERT INTO `region_info` VALUES ('1798', '350823', '上杭县', '350800');
INSERT INTO `region_info` VALUES ('1799', '350824', '武平县', '350800');
INSERT INTO `region_info` VALUES ('1800', '350825', '连城县', '350800');
INSERT INTO `region_info` VALUES ('1801', '350881', '漳平市', '350800');
INSERT INTO `region_info` VALUES ('1802', '350901', '市辖区', '350900');
INSERT INTO `region_info` VALUES ('1803', '350902', '蕉城区', '350900');
INSERT INTO `region_info` VALUES ('1804', '350921', '霞浦县', '350900');
INSERT INTO `region_info` VALUES ('1805', '350922', '古田县', '350900');
INSERT INTO `region_info` VALUES ('1806', '350923', '屏南县', '350900');
INSERT INTO `region_info` VALUES ('1807', '350924', '寿宁县', '350900');
INSERT INTO `region_info` VALUES ('1808', '350925', '周宁县', '350900');
INSERT INTO `region_info` VALUES ('1809', '350926', '柘荣县', '350900');
INSERT INTO `region_info` VALUES ('1810', '350981', '福安市', '350900');
INSERT INTO `region_info` VALUES ('1811', '350982', '福鼎市', '350900');
INSERT INTO `region_info` VALUES ('1812', '360101', '市辖区', '360100');
INSERT INTO `region_info` VALUES ('1813', '360102', '东湖区', '360100');
INSERT INTO `region_info` VALUES ('1814', '360103', '西湖区', '360100');
INSERT INTO `region_info` VALUES ('1815', '360104', '青云谱区', '360100');
INSERT INTO `region_info` VALUES ('1816', '360105', '湾里区', '360100');
INSERT INTO `region_info` VALUES ('1817', '360111', '青山湖区', '360100');
INSERT INTO `region_info` VALUES ('1818', '360121', '南昌县', '360100');
INSERT INTO `region_info` VALUES ('1819', '360122', '新建县', '360100');
INSERT INTO `region_info` VALUES ('1820', '360123', '安义县', '360100');
INSERT INTO `region_info` VALUES ('1821', '360124', '进贤县', '360100');
INSERT INTO `region_info` VALUES ('1822', '360201', '市辖区', '360200');
INSERT INTO `region_info` VALUES ('1823', '360202', '昌江区', '360200');
INSERT INTO `region_info` VALUES ('1824', '360203', '珠山区', '360200');
INSERT INTO `region_info` VALUES ('1825', '360222', '浮梁县', '360200');
INSERT INTO `region_info` VALUES ('1826', '360281', '乐平市', '360200');
INSERT INTO `region_info` VALUES ('1827', '360301', '市辖区', '360300');
INSERT INTO `region_info` VALUES ('1828', '360302', '安源区', '360300');
INSERT INTO `region_info` VALUES ('1829', '360313', '湘东区', '360300');
INSERT INTO `region_info` VALUES ('1830', '360321', '莲花县', '360300');
INSERT INTO `region_info` VALUES ('1831', '360322', '上栗县', '360300');
INSERT INTO `region_info` VALUES ('1832', '360323', '芦溪县', '360300');
INSERT INTO `region_info` VALUES ('1833', '360401', '市辖区', '360400');
INSERT INTO `region_info` VALUES ('1834', '360402', '庐山区', '360400');
INSERT INTO `region_info` VALUES ('1835', '360403', '浔阳区', '360400');
INSERT INTO `region_info` VALUES ('1836', '360421', '九江县', '360400');
INSERT INTO `region_info` VALUES ('1837', '360423', '武宁县', '360400');
INSERT INTO `region_info` VALUES ('1838', '360424', '修水县', '360400');
INSERT INTO `region_info` VALUES ('1839', '360425', '永修县', '360400');
INSERT INTO `region_info` VALUES ('1840', '360426', '德安县', '360400');
INSERT INTO `region_info` VALUES ('1841', '360427', '星子县', '360400');
INSERT INTO `region_info` VALUES ('1842', '360428', '都昌县', '360400');
INSERT INTO `region_info` VALUES ('1843', '360429', '湖口县', '360400');
INSERT INTO `region_info` VALUES ('1844', '360430', '彭泽县', '360400');
INSERT INTO `region_info` VALUES ('1845', '360481', '瑞昌市', '360400');
INSERT INTO `region_info` VALUES ('1846', '360501', '市辖区', '360500');
INSERT INTO `region_info` VALUES ('1847', '360502', '渝水区', '360500');
INSERT INTO `region_info` VALUES ('1848', '360521', '分宜县', '360500');
INSERT INTO `region_info` VALUES ('1849', '360601', '市辖区', '360600');
INSERT INTO `region_info` VALUES ('1850', '360602', '月湖区', '360600');
INSERT INTO `region_info` VALUES ('1851', '360622', '余江县', '360600');
INSERT INTO `region_info` VALUES ('1852', '360681', '贵溪市', '360600');
INSERT INTO `region_info` VALUES ('1853', '360701', '市辖区', '360700');
INSERT INTO `region_info` VALUES ('1854', '360702', '章贡区', '360700');
INSERT INTO `region_info` VALUES ('1855', '360721', '赣　县', '360700');
INSERT INTO `region_info` VALUES ('1856', '360722', '信丰县', '360700');
INSERT INTO `region_info` VALUES ('1857', '360723', '大余县', '360700');
INSERT INTO `region_info` VALUES ('1858', '360724', '上犹县', '360700');
INSERT INTO `region_info` VALUES ('1859', '360725', '崇义县', '360700');
INSERT INTO `region_info` VALUES ('1860', '360726', '安远县', '360700');
INSERT INTO `region_info` VALUES ('1861', '360727', '龙南县', '360700');
INSERT INTO `region_info` VALUES ('1862', '360728', '定南县', '360700');
INSERT INTO `region_info` VALUES ('1863', '360729', '全南县', '360700');
INSERT INTO `region_info` VALUES ('1864', '360730', '宁都县', '360700');
INSERT INTO `region_info` VALUES ('1865', '360731', '于都县', '360700');
INSERT INTO `region_info` VALUES ('1866', '360732', '兴国县', '360700');
INSERT INTO `region_info` VALUES ('1867', '360733', '会昌县', '360700');
INSERT INTO `region_info` VALUES ('1868', '360734', '寻乌县', '360700');
INSERT INTO `region_info` VALUES ('1869', '360735', '石城县', '360700');
INSERT INTO `region_info` VALUES ('1870', '360781', '瑞金市', '360700');
INSERT INTO `region_info` VALUES ('1871', '360782', '南康市', '360700');
INSERT INTO `region_info` VALUES ('1872', '360801', '市辖区', '360800');
INSERT INTO `region_info` VALUES ('1873', '360802', '吉州区', '360800');
INSERT INTO `region_info` VALUES ('1874', '360803', '青原区', '360800');
INSERT INTO `region_info` VALUES ('1875', '360821', '吉安县', '360800');
INSERT INTO `region_info` VALUES ('1876', '360822', '吉水县', '360800');
INSERT INTO `region_info` VALUES ('1877', '360823', '峡江县', '360800');
INSERT INTO `region_info` VALUES ('1878', '360824', '新干县', '360800');
INSERT INTO `region_info` VALUES ('1879', '360825', '永丰县', '360800');
INSERT INTO `region_info` VALUES ('1880', '360826', '泰和县', '360800');
INSERT INTO `region_info` VALUES ('1881', '360827', '遂川县', '360800');
INSERT INTO `region_info` VALUES ('1882', '360828', '万安县', '360800');
INSERT INTO `region_info` VALUES ('1883', '360829', '安福县', '360800');
INSERT INTO `region_info` VALUES ('1884', '360830', '永新县', '360800');
INSERT INTO `region_info` VALUES ('1885', '360881', '井冈山市', '360800');
INSERT INTO `region_info` VALUES ('1886', '360901', '市辖区', '360900');
INSERT INTO `region_info` VALUES ('1887', '360902', '袁州区', '360900');
INSERT INTO `region_info` VALUES ('1888', '360921', '奉新县', '360900');
INSERT INTO `region_info` VALUES ('1889', '360922', '万载县', '360900');
INSERT INTO `region_info` VALUES ('1890', '360923', '上高县', '360900');
INSERT INTO `region_info` VALUES ('1891', '360924', '宜丰县', '360900');
INSERT INTO `region_info` VALUES ('1892', '360925', '靖安县', '360900');
INSERT INTO `region_info` VALUES ('1893', '360926', '铜鼓县', '360900');
INSERT INTO `region_info` VALUES ('1894', '360981', '丰城市', '360900');
INSERT INTO `region_info` VALUES ('1895', '360982', '樟树市', '360900');
INSERT INTO `region_info` VALUES ('1896', '360983', '高安市', '360900');
INSERT INTO `region_info` VALUES ('1897', '361001', '市辖区', '361000');
INSERT INTO `region_info` VALUES ('1898', '361002', '临川区', '361000');
INSERT INTO `region_info` VALUES ('1899', '361021', '南城县', '361000');
INSERT INTO `region_info` VALUES ('1900', '361022', '黎川县', '361000');
INSERT INTO `region_info` VALUES ('1901', '361023', '南丰县', '361000');
INSERT INTO `region_info` VALUES ('1902', '361024', '崇仁县', '361000');
INSERT INTO `region_info` VALUES ('1903', '361025', '乐安县', '361000');
INSERT INTO `region_info` VALUES ('1904', '361026', '宜黄县', '361000');
INSERT INTO `region_info` VALUES ('1905', '361027', '金溪县', '361000');
INSERT INTO `region_info` VALUES ('1906', '361028', '资溪县', '361000');
INSERT INTO `region_info` VALUES ('1907', '361029', '东乡县', '361000');
INSERT INTO `region_info` VALUES ('1908', '361030', '广昌县', '361000');
INSERT INTO `region_info` VALUES ('1909', '361101', '市辖区', '361100');
INSERT INTO `region_info` VALUES ('1910', '361102', '信州区', '361100');
INSERT INTO `region_info` VALUES ('1911', '361121', '上饶县', '361100');
INSERT INTO `region_info` VALUES ('1912', '361122', '广丰县', '361100');
INSERT INTO `region_info` VALUES ('1913', '361123', '玉山县', '361100');
INSERT INTO `region_info` VALUES ('1914', '361124', '铅山县', '361100');
INSERT INTO `region_info` VALUES ('1915', '361125', '横峰县', '361100');
INSERT INTO `region_info` VALUES ('1916', '361126', '弋阳县', '361100');
INSERT INTO `region_info` VALUES ('1917', '361127', '余干县', '361100');
INSERT INTO `region_info` VALUES ('1918', '361128', '鄱阳县', '361100');
INSERT INTO `region_info` VALUES ('1919', '361129', '万年县', '361100');
INSERT INTO `region_info` VALUES ('1920', '361130', '婺源县', '361100');
INSERT INTO `region_info` VALUES ('1921', '361181', '德兴市', '361100');
INSERT INTO `region_info` VALUES ('1922', '370101', '市辖区', '370100');
INSERT INTO `region_info` VALUES ('1923', '370102', '历下区', '370100');
INSERT INTO `region_info` VALUES ('1924', '370103', '市中区', '370100');
INSERT INTO `region_info` VALUES ('1925', '370104', '槐荫区', '370100');
INSERT INTO `region_info` VALUES ('1926', '370105', '天桥区', '370100');
INSERT INTO `region_info` VALUES ('1927', '370112', '历城区', '370100');
INSERT INTO `region_info` VALUES ('1928', '370113', '长清区', '370100');
INSERT INTO `region_info` VALUES ('1929', '370124', '平阴县', '370100');
INSERT INTO `region_info` VALUES ('1930', '370125', '济阳县', '370100');
INSERT INTO `region_info` VALUES ('1931', '370126', '商河县', '370100');
INSERT INTO `region_info` VALUES ('1932', '370181', '章丘市', '370100');
INSERT INTO `region_info` VALUES ('1933', '370201', '市辖区', '370200');
INSERT INTO `region_info` VALUES ('1934', '370202', '市南区', '370200');
INSERT INTO `region_info` VALUES ('1935', '370203', '市北区', '370200');
INSERT INTO `region_info` VALUES ('1936', '370205', '四方区', '370200');
INSERT INTO `region_info` VALUES ('1937', '370211', '黄岛区', '370200');
INSERT INTO `region_info` VALUES ('1938', '370212', '崂山区', '370200');
INSERT INTO `region_info` VALUES ('1939', '370213', '李沧区', '370200');
INSERT INTO `region_info` VALUES ('1940', '370214', '城阳区', '370200');
INSERT INTO `region_info` VALUES ('1941', '370281', '胶州市', '370200');
INSERT INTO `region_info` VALUES ('1942', '370282', '即墨市', '370200');
INSERT INTO `region_info` VALUES ('1943', '370283', '平度市', '370200');
INSERT INTO `region_info` VALUES ('1944', '370284', '胶南市', '370200');
INSERT INTO `region_info` VALUES ('1945', '370285', '莱西市', '370200');
INSERT INTO `region_info` VALUES ('1946', '370301', '市辖区', '370300');
INSERT INTO `region_info` VALUES ('1947', '370302', '淄川区', '370300');
INSERT INTO `region_info` VALUES ('1948', '370303', '张店区', '370300');
INSERT INTO `region_info` VALUES ('1949', '370304', '博山区', '370300');
INSERT INTO `region_info` VALUES ('1950', '370305', '临淄区', '370300');
INSERT INTO `region_info` VALUES ('1951', '370306', '周村区', '370300');
INSERT INTO `region_info` VALUES ('1952', '370321', '桓台县', '370300');
INSERT INTO `region_info` VALUES ('1953', '370322', '高青县', '370300');
INSERT INTO `region_info` VALUES ('1954', '370323', '沂源县', '370300');
INSERT INTO `region_info` VALUES ('1955', '370401', '市辖区', '370400');
INSERT INTO `region_info` VALUES ('1956', '370402', '市中区', '370400');
INSERT INTO `region_info` VALUES ('1957', '370403', '薛城区', '370400');
INSERT INTO `region_info` VALUES ('1958', '370404', '峄城区', '370400');
INSERT INTO `region_info` VALUES ('1959', '370405', '台儿庄区', '370400');
INSERT INTO `region_info` VALUES ('1960', '370406', '山亭区', '370400');
INSERT INTO `region_info` VALUES ('1961', '370481', '滕州市', '370400');
INSERT INTO `region_info` VALUES ('1962', '370501', '市辖区', '370500');
INSERT INTO `region_info` VALUES ('1963', '370502', '东营区', '370500');
INSERT INTO `region_info` VALUES ('1964', '370503', '河口区', '370500');
INSERT INTO `region_info` VALUES ('1965', '370521', '垦利县', '370500');
INSERT INTO `region_info` VALUES ('1966', '370522', '利津县', '370500');
INSERT INTO `region_info` VALUES ('1967', '370523', '广饶县', '370500');
INSERT INTO `region_info` VALUES ('1968', '370601', '市辖区', '370600');
INSERT INTO `region_info` VALUES ('1969', '370602', '芝罘区', '370600');
INSERT INTO `region_info` VALUES ('1970', '370611', '福山区', '370600');
INSERT INTO `region_info` VALUES ('1971', '370612', '牟平区', '370600');
INSERT INTO `region_info` VALUES ('1972', '370613', '莱山区', '370600');
INSERT INTO `region_info` VALUES ('1973', '370634', '长岛县', '370600');
INSERT INTO `region_info` VALUES ('1974', '370681', '龙口市', '370600');
INSERT INTO `region_info` VALUES ('1975', '370682', '莱阳市', '370600');
INSERT INTO `region_info` VALUES ('1976', '370683', '莱州市', '370600');
INSERT INTO `region_info` VALUES ('1977', '370684', '蓬莱市', '370600');
INSERT INTO `region_info` VALUES ('1978', '370685', '招远市', '370600');
INSERT INTO `region_info` VALUES ('1979', '370686', '栖霞市', '370600');
INSERT INTO `region_info` VALUES ('1980', '370687', '海阳市', '370600');
INSERT INTO `region_info` VALUES ('1981', '370701', '市辖区', '370700');
INSERT INTO `region_info` VALUES ('1982', '370702', '潍城区', '370700');
INSERT INTO `region_info` VALUES ('1983', '370703', '寒亭区', '370700');
INSERT INTO `region_info` VALUES ('1984', '370704', '坊子区', '370700');
INSERT INTO `region_info` VALUES ('1985', '370705', '奎文区', '370700');
INSERT INTO `region_info` VALUES ('1986', '370724', '临朐县', '370700');
INSERT INTO `region_info` VALUES ('1987', '370725', '昌乐县', '370700');
INSERT INTO `region_info` VALUES ('1988', '370781', '青州市', '370700');
INSERT INTO `region_info` VALUES ('1989', '370782', '诸城市', '370700');
INSERT INTO `region_info` VALUES ('1990', '370783', '寿光市', '370700');
INSERT INTO `region_info` VALUES ('1991', '370784', '安丘市', '370700');
INSERT INTO `region_info` VALUES ('1992', '370785', '高密市', '370700');
INSERT INTO `region_info` VALUES ('1993', '370786', '昌邑市', '370700');
INSERT INTO `region_info` VALUES ('1994', '370801', '市辖区', '370800');
INSERT INTO `region_info` VALUES ('1995', '370802', '市中区', '370800');
INSERT INTO `region_info` VALUES ('1996', '370811', '任城区', '370800');
INSERT INTO `region_info` VALUES ('1997', '370826', '微山县', '370800');
INSERT INTO `region_info` VALUES ('1998', '370827', '鱼台县', '370800');
INSERT INTO `region_info` VALUES ('1999', '370828', '金乡县', '370800');
INSERT INTO `region_info` VALUES ('2000', '370829', '嘉祥县', '370800');
INSERT INTO `region_info` VALUES ('2001', '370830', '汶上县', '370800');
INSERT INTO `region_info` VALUES ('2002', '370831', '泗水县', '370800');
INSERT INTO `region_info` VALUES ('2003', '370832', '梁山县', '370800');
INSERT INTO `region_info` VALUES ('2004', '370881', '曲阜市', '370800');
INSERT INTO `region_info` VALUES ('2005', '370882', '兖州市', '370800');
INSERT INTO `region_info` VALUES ('2006', '370883', '邹城市', '370800');
INSERT INTO `region_info` VALUES ('2007', '370901', '市辖区', '370900');
INSERT INTO `region_info` VALUES ('2008', '370902', '泰山区', '370900');
INSERT INTO `region_info` VALUES ('2009', '370903', '岱岳区', '370900');
INSERT INTO `region_info` VALUES ('2010', '370921', '宁阳县', '370900');
INSERT INTO `region_info` VALUES ('2011', '370923', '东平县', '370900');
INSERT INTO `region_info` VALUES ('2012', '370982', '新泰市', '370900');
INSERT INTO `region_info` VALUES ('2013', '370983', '肥城市', '370900');
INSERT INTO `region_info` VALUES ('2014', '371001', '市辖区', '371000');
INSERT INTO `region_info` VALUES ('2015', '371002', '环翠区', '371000');
INSERT INTO `region_info` VALUES ('2016', '371081', '文登市', '371000');
INSERT INTO `region_info` VALUES ('2017', '371082', '荣成市', '371000');
INSERT INTO `region_info` VALUES ('2018', '371083', '乳山市', '371000');
INSERT INTO `region_info` VALUES ('2019', '371101', '市辖区', '371100');
INSERT INTO `region_info` VALUES ('2020', '371102', '东港区', '371100');
INSERT INTO `region_info` VALUES ('2021', '371103', '岚山区', '371100');
INSERT INTO `region_info` VALUES ('2022', '371121', '五莲县', '371100');
INSERT INTO `region_info` VALUES ('2023', '371122', '莒　县', '371100');
INSERT INTO `region_info` VALUES ('2024', '371201', '市辖区', '371200');
INSERT INTO `region_info` VALUES ('2025', '371202', '莱城区', '371200');
INSERT INTO `region_info` VALUES ('2026', '371203', '钢城区', '371200');
INSERT INTO `region_info` VALUES ('2027', '371301', '市辖区', '371300');
INSERT INTO `region_info` VALUES ('2028', '371302', '兰山区', '371300');
INSERT INTO `region_info` VALUES ('2029', '371311', '罗庄区', '371300');
INSERT INTO `region_info` VALUES ('2030', '371312', '河东区', '371300');
INSERT INTO `region_info` VALUES ('2031', '371321', '沂南县', '371300');
INSERT INTO `region_info` VALUES ('2032', '371322', '郯城县', '371300');
INSERT INTO `region_info` VALUES ('2033', '371323', '沂水县', '371300');
INSERT INTO `region_info` VALUES ('2034', '371324', '苍山县', '371300');
INSERT INTO `region_info` VALUES ('2035', '371325', '费　县', '371300');
INSERT INTO `region_info` VALUES ('2036', '371326', '平邑县', '371300');
INSERT INTO `region_info` VALUES ('2037', '371327', '莒南县', '371300');
INSERT INTO `region_info` VALUES ('2038', '371328', '蒙阴县', '371300');
INSERT INTO `region_info` VALUES ('2039', '371329', '临沭县', '371300');
INSERT INTO `region_info` VALUES ('2040', '371401', '市辖区', '371400');
INSERT INTO `region_info` VALUES ('2041', '371402', '德城区', '371400');
INSERT INTO `region_info` VALUES ('2042', '371421', '陵　县', '371400');
INSERT INTO `region_info` VALUES ('2043', '371422', '宁津县', '371400');
INSERT INTO `region_info` VALUES ('2044', '371423', '庆云县', '371400');
INSERT INTO `region_info` VALUES ('2045', '371424', '临邑县', '371400');
INSERT INTO `region_info` VALUES ('2046', '371425', '齐河县', '371400');
INSERT INTO `region_info` VALUES ('2047', '371426', '平原县', '371400');
INSERT INTO `region_info` VALUES ('2048', '371427', '夏津县', '371400');
INSERT INTO `region_info` VALUES ('2049', '371428', '武城县', '371400');
INSERT INTO `region_info` VALUES ('2050', '371481', '乐陵市', '371400');
INSERT INTO `region_info` VALUES ('2051', '371482', '禹城市', '371400');
INSERT INTO `region_info` VALUES ('2052', '371501', '市辖区', '371500');
INSERT INTO `region_info` VALUES ('2053', '371502', '东昌府区', '371500');
INSERT INTO `region_info` VALUES ('2054', '371521', '阳谷县', '371500');
INSERT INTO `region_info` VALUES ('2055', '371522', '莘　县', '371500');
INSERT INTO `region_info` VALUES ('2056', '371523', '茌平县', '371500');
INSERT INTO `region_info` VALUES ('2057', '371524', '东阿县', '371500');
INSERT INTO `region_info` VALUES ('2058', '371525', '冠　县', '371500');
INSERT INTO `region_info` VALUES ('2059', '371526', '高唐县', '371500');
INSERT INTO `region_info` VALUES ('2060', '371581', '临清市', '371500');
INSERT INTO `region_info` VALUES ('2061', '371601', '市辖区', '371600');
INSERT INTO `region_info` VALUES ('2062', '371602', '滨城区', '371600');
INSERT INTO `region_info` VALUES ('2063', '371621', '惠民县', '371600');
INSERT INTO `region_info` VALUES ('2064', '371622', '阳信县', '371600');
INSERT INTO `region_info` VALUES ('2065', '371623', '无棣县', '371600');
INSERT INTO `region_info` VALUES ('2066', '371624', '沾化县', '371600');
INSERT INTO `region_info` VALUES ('2067', '371625', '博兴县', '371600');
INSERT INTO `region_info` VALUES ('2068', '371626', '邹平县', '371600');
INSERT INTO `region_info` VALUES ('2069', '371701', '市辖区', '371700');
INSERT INTO `region_info` VALUES ('2070', '371702', '牡丹区', '371700');
INSERT INTO `region_info` VALUES ('2071', '371721', '曹　县', '371700');
INSERT INTO `region_info` VALUES ('2072', '371722', '单　县', '371700');
INSERT INTO `region_info` VALUES ('2073', '371723', '成武县', '371700');
INSERT INTO `region_info` VALUES ('2074', '371724', '巨野县', '371700');
INSERT INTO `region_info` VALUES ('2075', '371725', '郓城县', '371700');
INSERT INTO `region_info` VALUES ('2076', '371726', '鄄城县', '371700');
INSERT INTO `region_info` VALUES ('2077', '371727', '定陶县', '371700');
INSERT INTO `region_info` VALUES ('2078', '371728', '东明县', '371700');
INSERT INTO `region_info` VALUES ('2079', '410101', '市辖区', '410100');
INSERT INTO `region_info` VALUES ('2080', '410102', '中原区', '410100');
INSERT INTO `region_info` VALUES ('2081', '410103', '二七区', '410100');
INSERT INTO `region_info` VALUES ('2082', '410104', '管城回族区', '410100');
INSERT INTO `region_info` VALUES ('2083', '410105', '金水区', '410100');
INSERT INTO `region_info` VALUES ('2084', '410106', '上街区', '410100');
INSERT INTO `region_info` VALUES ('2085', '410108', '邙山区', '410100');
INSERT INTO `region_info` VALUES ('2086', '410122', '中牟县', '410100');
INSERT INTO `region_info` VALUES ('2087', '410181', '巩义市', '410100');
INSERT INTO `region_info` VALUES ('2088', '410182', '荥阳市', '410100');
INSERT INTO `region_info` VALUES ('2089', '410183', '新密市', '410100');
INSERT INTO `region_info` VALUES ('2090', '410184', '新郑市', '410100');
INSERT INTO `region_info` VALUES ('2091', '410185', '登封市', '410100');
INSERT INTO `region_info` VALUES ('2092', '410201', '市辖区', '410200');
INSERT INTO `region_info` VALUES ('2093', '410202', '龙亭区', '410200');
INSERT INTO `region_info` VALUES ('2094', '410203', '顺河回族区', '410200');
INSERT INTO `region_info` VALUES ('2095', '410204', '鼓楼区', '410200');
INSERT INTO `region_info` VALUES ('2096', '410205', '南关区', '410200');
INSERT INTO `region_info` VALUES ('2097', '410211', '郊　区', '410200');
INSERT INTO `region_info` VALUES ('2098', '410221', '杞　县', '410200');
INSERT INTO `region_info` VALUES ('2099', '410222', '通许县', '410200');
INSERT INTO `region_info` VALUES ('2100', '410223', '尉氏县', '410200');
INSERT INTO `region_info` VALUES ('2101', '410224', '开封县', '410200');
INSERT INTO `region_info` VALUES ('2102', '410225', '兰考县', '410200');
INSERT INTO `region_info` VALUES ('2103', '410301', '市辖区', '410300');
INSERT INTO `region_info` VALUES ('2104', '410302', '老城区', '410300');
INSERT INTO `region_info` VALUES ('2105', '410303', '西工区', '410300');
INSERT INTO `region_info` VALUES ('2106', '410304', '廛河回族区', '410300');
INSERT INTO `region_info` VALUES ('2107', '410305', '涧西区', '410300');
INSERT INTO `region_info` VALUES ('2108', '410306', '吉利区', '410300');
INSERT INTO `region_info` VALUES ('2109', '410307', '洛龙区', '410300');
INSERT INTO `region_info` VALUES ('2110', '410322', '孟津县', '410300');
INSERT INTO `region_info` VALUES ('2111', '410323', '新安县', '410300');
INSERT INTO `region_info` VALUES ('2112', '410324', '栾川县', '410300');
INSERT INTO `region_info` VALUES ('2113', '410325', '嵩　县', '410300');
INSERT INTO `region_info` VALUES ('2114', '410326', '汝阳县', '410300');
INSERT INTO `region_info` VALUES ('2115', '410327', '宜阳县', '410300');
INSERT INTO `region_info` VALUES ('2116', '410328', '洛宁县', '410300');
INSERT INTO `region_info` VALUES ('2117', '410329', '伊川县', '410300');
INSERT INTO `region_info` VALUES ('2118', '410381', '偃师市', '410300');
INSERT INTO `region_info` VALUES ('2119', '410401', '市辖区', '410400');
INSERT INTO `region_info` VALUES ('2120', '410402', '新华区', '410400');
INSERT INTO `region_info` VALUES ('2121', '410403', '卫东区', '410400');
INSERT INTO `region_info` VALUES ('2122', '410404', '石龙区', '410400');
INSERT INTO `region_info` VALUES ('2123', '410411', '湛河区', '410400');
INSERT INTO `region_info` VALUES ('2124', '410421', '宝丰县', '410400');
INSERT INTO `region_info` VALUES ('2125', '410422', '叶　县', '410400');
INSERT INTO `region_info` VALUES ('2126', '410423', '鲁山县', '410400');
INSERT INTO `region_info` VALUES ('2127', '410425', '郏　县', '410400');
INSERT INTO `region_info` VALUES ('2128', '410481', '舞钢市', '410400');
INSERT INTO `region_info` VALUES ('2129', '410482', '汝州市', '410400');
INSERT INTO `region_info` VALUES ('2130', '410501', '市辖区', '410500');
INSERT INTO `region_info` VALUES ('2131', '410502', '文峰区', '410500');
INSERT INTO `region_info` VALUES ('2132', '410503', '北关区', '410500');
INSERT INTO `region_info` VALUES ('2133', '410505', '殷都区', '410500');
INSERT INTO `region_info` VALUES ('2134', '410506', '龙安区', '410500');
INSERT INTO `region_info` VALUES ('2135', '410522', '安阳县', '410500');
INSERT INTO `region_info` VALUES ('2136', '410523', '汤阴县', '410500');
INSERT INTO `region_info` VALUES ('2137', '410526', '滑　县', '410500');
INSERT INTO `region_info` VALUES ('2138', '410527', '内黄县', '410500');
INSERT INTO `region_info` VALUES ('2139', '410581', '林州市', '410500');
INSERT INTO `region_info` VALUES ('2140', '410601', '市辖区', '410600');
INSERT INTO `region_info` VALUES ('2141', '410602', '鹤山区', '410600');
INSERT INTO `region_info` VALUES ('2142', '410603', '山城区', '410600');
INSERT INTO `region_info` VALUES ('2143', '410611', '淇滨区', '410600');
INSERT INTO `region_info` VALUES ('2144', '410621', '浚　县', '410600');
INSERT INTO `region_info` VALUES ('2145', '410622', '淇　县', '410600');
INSERT INTO `region_info` VALUES ('2146', '410701', '市辖区', '410700');
INSERT INTO `region_info` VALUES ('2147', '410702', '红旗区', '410700');
INSERT INTO `region_info` VALUES ('2148', '410703', '卫滨区', '410700');
INSERT INTO `region_info` VALUES ('2149', '410704', '凤泉区', '410700');
INSERT INTO `region_info` VALUES ('2150', '410711', '牧野区', '410700');
INSERT INTO `region_info` VALUES ('2151', '410721', '新乡县', '410700');
INSERT INTO `region_info` VALUES ('2152', '410724', '获嘉县', '410700');
INSERT INTO `region_info` VALUES ('2153', '410725', '原阳县', '410700');
INSERT INTO `region_info` VALUES ('2154', '410726', '延津县', '410700');
INSERT INTO `region_info` VALUES ('2155', '410727', '封丘县', '410700');
INSERT INTO `region_info` VALUES ('2156', '410728', '长垣县', '410700');
INSERT INTO `region_info` VALUES ('2157', '410781', '卫辉市', '410700');
INSERT INTO `region_info` VALUES ('2158', '410782', '辉县市', '410700');
INSERT INTO `region_info` VALUES ('2159', '410801', '市辖区', '410800');
INSERT INTO `region_info` VALUES ('2160', '410802', '解放区', '410800');
INSERT INTO `region_info` VALUES ('2161', '410803', '中站区', '410800');
INSERT INTO `region_info` VALUES ('2162', '410804', '马村区', '410800');
INSERT INTO `region_info` VALUES ('2163', '410811', '山阳区', '410800');
INSERT INTO `region_info` VALUES ('2164', '410821', '修武县', '410800');
INSERT INTO `region_info` VALUES ('2165', '410822', '博爱县', '410800');
INSERT INTO `region_info` VALUES ('2166', '410823', '武陟县', '410800');
INSERT INTO `region_info` VALUES ('2167', '410825', '温　县', '410800');
INSERT INTO `region_info` VALUES ('2168', '410881', '济源市', '410800');
INSERT INTO `region_info` VALUES ('2169', '410882', '沁阳市', '410800');
INSERT INTO `region_info` VALUES ('2170', '410883', '孟州市', '410800');
INSERT INTO `region_info` VALUES ('2171', '410901', '市辖区', '410900');
INSERT INTO `region_info` VALUES ('2172', '410902', '华龙区', '410900');
INSERT INTO `region_info` VALUES ('2173', '410922', '清丰县', '410900');
INSERT INTO `region_info` VALUES ('2174', '410923', '南乐县', '410900');
INSERT INTO `region_info` VALUES ('2175', '410926', '范　县', '410900');
INSERT INTO `region_info` VALUES ('2176', '410927', '台前县', '410900');
INSERT INTO `region_info` VALUES ('2177', '410928', '濮阳县', '410900');
INSERT INTO `region_info` VALUES ('2178', '411001', '市辖区', '411000');
INSERT INTO `region_info` VALUES ('2179', '411002', '魏都区', '411000');
INSERT INTO `region_info` VALUES ('2180', '411023', '许昌县', '411000');
INSERT INTO `region_info` VALUES ('2181', '411024', '鄢陵县', '411000');
INSERT INTO `region_info` VALUES ('2182', '411025', '襄城县', '411000');
INSERT INTO `region_info` VALUES ('2183', '411081', '禹州市', '411000');
INSERT INTO `region_info` VALUES ('2184', '411082', '长葛市', '411000');
INSERT INTO `region_info` VALUES ('2185', '411101', '市辖区', '411100');
INSERT INTO `region_info` VALUES ('2186', '411102', '源汇区', '411100');
INSERT INTO `region_info` VALUES ('2187', '411103', '郾城区', '411100');
INSERT INTO `region_info` VALUES ('2188', '411104', '召陵区', '411100');
INSERT INTO `region_info` VALUES ('2189', '411121', '舞阳县', '411100');
INSERT INTO `region_info` VALUES ('2190', '411122', '临颍县', '411100');
INSERT INTO `region_info` VALUES ('2191', '411201', '市辖区', '411200');
INSERT INTO `region_info` VALUES ('2192', '411202', '湖滨区', '411200');
INSERT INTO `region_info` VALUES ('2193', '411221', '渑池县', '411200');
INSERT INTO `region_info` VALUES ('2194', '411222', '陕　县', '411200');
INSERT INTO `region_info` VALUES ('2195', '411224', '卢氏县', '411200');
INSERT INTO `region_info` VALUES ('2196', '411281', '义马市', '411200');
INSERT INTO `region_info` VALUES ('2197', '411282', '灵宝市', '411200');
INSERT INTO `region_info` VALUES ('2198', '411301', '市辖区', '411300');
INSERT INTO `region_info` VALUES ('2199', '411302', '宛城区', '411300');
INSERT INTO `region_info` VALUES ('2200', '411303', '卧龙区', '411300');
INSERT INTO `region_info` VALUES ('2201', '411321', '南召县', '411300');
INSERT INTO `region_info` VALUES ('2202', '411322', '方城县', '411300');
INSERT INTO `region_info` VALUES ('2203', '411323', '西峡县', '411300');
INSERT INTO `region_info` VALUES ('2204', '411324', '镇平县', '411300');
INSERT INTO `region_info` VALUES ('2205', '411325', '内乡县', '411300');
INSERT INTO `region_info` VALUES ('2206', '411326', '淅川县', '411300');
INSERT INTO `region_info` VALUES ('2207', '411327', '社旗县', '411300');
INSERT INTO `region_info` VALUES ('2208', '411328', '唐河县', '411300');
INSERT INTO `region_info` VALUES ('2209', '411329', '新野县', '411300');
INSERT INTO `region_info` VALUES ('2210', '411330', '桐柏县', '411300');
INSERT INTO `region_info` VALUES ('2211', '411381', '邓州市', '411300');
INSERT INTO `region_info` VALUES ('2212', '411401', '市辖区', '411400');
INSERT INTO `region_info` VALUES ('2213', '411402', '梁园区', '411400');
INSERT INTO `region_info` VALUES ('2214', '411403', '睢阳区', '411400');
INSERT INTO `region_info` VALUES ('2215', '411421', '民权县', '411400');
INSERT INTO `region_info` VALUES ('2216', '411422', '睢　县', '411400');
INSERT INTO `region_info` VALUES ('2217', '411423', '宁陵县', '411400');
INSERT INTO `region_info` VALUES ('2218', '411424', '柘城县', '411400');
INSERT INTO `region_info` VALUES ('2219', '411425', '虞城县', '411400');
INSERT INTO `region_info` VALUES ('2220', '411426', '夏邑县', '411400');
INSERT INTO `region_info` VALUES ('2221', '411481', '永城市', '411400');
INSERT INTO `region_info` VALUES ('2222', '411501', '市辖区', '411500');
INSERT INTO `region_info` VALUES ('2223', '411502', '师河区', '411500');
INSERT INTO `region_info` VALUES ('2224', '411503', '平桥区', '411500');
INSERT INTO `region_info` VALUES ('2225', '411521', '罗山县', '411500');
INSERT INTO `region_info` VALUES ('2226', '411522', '光山县', '411500');
INSERT INTO `region_info` VALUES ('2227', '411523', '新　县', '411500');
INSERT INTO `region_info` VALUES ('2228', '411524', '商城县', '411500');
INSERT INTO `region_info` VALUES ('2229', '411525', '固始县', '411500');
INSERT INTO `region_info` VALUES ('2230', '411526', '潢川县', '411500');
INSERT INTO `region_info` VALUES ('2231', '411527', '淮滨县', '411500');
INSERT INTO `region_info` VALUES ('2232', '411528', '息　县', '411500');
INSERT INTO `region_info` VALUES ('2233', '411601', '市辖区', '411600');
INSERT INTO `region_info` VALUES ('2234', '411602', '川汇区', '411600');
INSERT INTO `region_info` VALUES ('2235', '411621', '扶沟县', '411600');
INSERT INTO `region_info` VALUES ('2236', '411622', '西华县', '411600');
INSERT INTO `region_info` VALUES ('2237', '411623', '商水县', '411600');
INSERT INTO `region_info` VALUES ('2238', '411624', '沈丘县', '411600');
INSERT INTO `region_info` VALUES ('2239', '411625', '郸城县', '411600');
INSERT INTO `region_info` VALUES ('2240', '411626', '淮阳县', '411600');
INSERT INTO `region_info` VALUES ('2241', '411627', '太康县', '411600');
INSERT INTO `region_info` VALUES ('2242', '411628', '鹿邑县', '411600');
INSERT INTO `region_info` VALUES ('2243', '411681', '项城市', '411600');
INSERT INTO `region_info` VALUES ('2244', '411701', '市辖区', '411700');
INSERT INTO `region_info` VALUES ('2245', '411702', '驿城区', '411700');
INSERT INTO `region_info` VALUES ('2246', '411721', '西平县', '411700');
INSERT INTO `region_info` VALUES ('2247', '411722', '上蔡县', '411700');
INSERT INTO `region_info` VALUES ('2248', '411723', '平舆县', '411700');
INSERT INTO `region_info` VALUES ('2249', '411724', '正阳县', '411700');
INSERT INTO `region_info` VALUES ('2250', '411725', '确山县', '411700');
INSERT INTO `region_info` VALUES ('2251', '411726', '泌阳县', '411700');
INSERT INTO `region_info` VALUES ('2252', '411727', '汝南县', '411700');
INSERT INTO `region_info` VALUES ('2253', '411728', '遂平县', '411700');
INSERT INTO `region_info` VALUES ('2254', '411729', '新蔡县', '411700');
INSERT INTO `region_info` VALUES ('2255', '420101', '市辖区', '420100');
INSERT INTO `region_info` VALUES ('2256', '420102', '江岸区', '420100');
INSERT INTO `region_info` VALUES ('2257', '420103', '江汉区', '420100');
INSERT INTO `region_info` VALUES ('2258', '420104', '乔口区', '420100');
INSERT INTO `region_info` VALUES ('2259', '420105', '汉阳区', '420100');
INSERT INTO `region_info` VALUES ('2260', '420106', '武昌区', '420100');
INSERT INTO `region_info` VALUES ('2261', '420107', '青山区', '420100');
INSERT INTO `region_info` VALUES ('2262', '420111', '洪山区', '420100');
INSERT INTO `region_info` VALUES ('2263', '420112', '东西湖区', '420100');
INSERT INTO `region_info` VALUES ('2264', '420113', '汉南区', '420100');
INSERT INTO `region_info` VALUES ('2265', '420114', '蔡甸区', '420100');
INSERT INTO `region_info` VALUES ('2266', '420115', '江夏区', '420100');
INSERT INTO `region_info` VALUES ('2267', '420116', '黄陂区', '420100');
INSERT INTO `region_info` VALUES ('2268', '420117', '新洲区', '420100');
INSERT INTO `region_info` VALUES ('2269', '420201', '市辖区', '420200');
INSERT INTO `region_info` VALUES ('2270', '420202', '黄石港区', '420200');
INSERT INTO `region_info` VALUES ('2271', '420203', '西塞山区', '420200');
INSERT INTO `region_info` VALUES ('2272', '420204', '下陆区', '420200');
INSERT INTO `region_info` VALUES ('2273', '420205', '铁山区', '420200');
INSERT INTO `region_info` VALUES ('2274', '420222', '阳新县', '420200');
INSERT INTO `region_info` VALUES ('2275', '420281', '大冶市', '420200');
INSERT INTO `region_info` VALUES ('2276', '420301', '市辖区', '420300');
INSERT INTO `region_info` VALUES ('2277', '420302', '茅箭区', '420300');
INSERT INTO `region_info` VALUES ('2278', '420303', '张湾区', '420300');
INSERT INTO `region_info` VALUES ('2279', '420321', '郧　县', '420300');
INSERT INTO `region_info` VALUES ('2280', '420322', '郧西县', '420300');
INSERT INTO `region_info` VALUES ('2281', '420323', '竹山县', '420300');
INSERT INTO `region_info` VALUES ('2282', '420324', '竹溪县', '420300');
INSERT INTO `region_info` VALUES ('2283', '420325', '房　县', '420300');
INSERT INTO `region_info` VALUES ('2284', '420381', '丹江口市', '420300');
INSERT INTO `region_info` VALUES ('2285', '420501', '市辖区', '420500');
INSERT INTO `region_info` VALUES ('2286', '420502', '西陵区', '420500');
INSERT INTO `region_info` VALUES ('2287', '420503', '伍家岗区', '420500');
INSERT INTO `region_info` VALUES ('2288', '420504', '点军区', '420500');
INSERT INTO `region_info` VALUES ('2289', '420505', '猇亭区', '420500');
INSERT INTO `region_info` VALUES ('2290', '420506', '夷陵区', '420500');
INSERT INTO `region_info` VALUES ('2291', '420525', '远安县', '420500');
INSERT INTO `region_info` VALUES ('2292', '420526', '兴山县', '420500');
INSERT INTO `region_info` VALUES ('2293', '420527', '秭归县', '420500');
INSERT INTO `region_info` VALUES ('2294', '420528', '长阳土家族自治县', '420500');
INSERT INTO `region_info` VALUES ('2295', '420529', '五峰土家族自治县', '420500');
INSERT INTO `region_info` VALUES ('2296', '420581', '宜都市', '420500');
INSERT INTO `region_info` VALUES ('2297', '420582', '当阳市', '420500');
INSERT INTO `region_info` VALUES ('2298', '420583', '枝江市', '420500');
INSERT INTO `region_info` VALUES ('2299', '420601', '市辖区', '420600');
INSERT INTO `region_info` VALUES ('2300', '420602', '襄城区', '420600');
INSERT INTO `region_info` VALUES ('2301', '420606', '樊城区', '420600');
INSERT INTO `region_info` VALUES ('2302', '420607', '襄阳区', '420600');
INSERT INTO `region_info` VALUES ('2303', '420624', '南漳县', '420600');
INSERT INTO `region_info` VALUES ('2304', '420625', '谷城县', '420600');
INSERT INTO `region_info` VALUES ('2305', '420626', '保康县', '420600');
INSERT INTO `region_info` VALUES ('2306', '420682', '老河口市', '420600');
INSERT INTO `region_info` VALUES ('2307', '420683', '枣阳市', '420600');
INSERT INTO `region_info` VALUES ('2308', '420684', '宜城市', '420600');
INSERT INTO `region_info` VALUES ('2309', '420701', '市辖区', '420700');
INSERT INTO `region_info` VALUES ('2310', '420702', '梁子湖区', '420700');
INSERT INTO `region_info` VALUES ('2311', '420703', '华容区', '420700');
INSERT INTO `region_info` VALUES ('2312', '420704', '鄂城区', '420700');
INSERT INTO `region_info` VALUES ('2313', '420801', '市辖区', '420800');
INSERT INTO `region_info` VALUES ('2314', '420802', '东宝区', '420800');
INSERT INTO `region_info` VALUES ('2315', '420804', '掇刀区', '420800');
INSERT INTO `region_info` VALUES ('2316', '420821', '京山县', '420800');
INSERT INTO `region_info` VALUES ('2317', '420822', '沙洋县', '420800');
INSERT INTO `region_info` VALUES ('2318', '420881', '钟祥市', '420800');
INSERT INTO `region_info` VALUES ('2319', '420901', '市辖区', '420900');
INSERT INTO `region_info` VALUES ('2320', '420902', '孝南区', '420900');
INSERT INTO `region_info` VALUES ('2321', '420921', '孝昌县', '420900');
INSERT INTO `region_info` VALUES ('2322', '420922', '大悟县', '420900');
INSERT INTO `region_info` VALUES ('2323', '420923', '云梦县', '420900');
INSERT INTO `region_info` VALUES ('2324', '420981', '应城市', '420900');
INSERT INTO `region_info` VALUES ('2325', '420982', '安陆市', '420900');
INSERT INTO `region_info` VALUES ('2326', '420984', '汉川市', '420900');
INSERT INTO `region_info` VALUES ('2327', '421001', '市辖区', '421000');
INSERT INTO `region_info` VALUES ('2328', '421002', '沙市区', '421000');
INSERT INTO `region_info` VALUES ('2329', '421003', '荆州区', '421000');
INSERT INTO `region_info` VALUES ('2330', '421022', '公安县', '421000');
INSERT INTO `region_info` VALUES ('2331', '421023', '监利县', '421000');
INSERT INTO `region_info` VALUES ('2332', '421024', '江陵县', '421000');
INSERT INTO `region_info` VALUES ('2333', '421081', '石首市', '421000');
INSERT INTO `region_info` VALUES ('2334', '421083', '洪湖市', '421000');
INSERT INTO `region_info` VALUES ('2335', '421087', '松滋市', '421000');
INSERT INTO `region_info` VALUES ('2336', '421101', '市辖区', '421100');
INSERT INTO `region_info` VALUES ('2337', '421102', '黄州区', '421100');
INSERT INTO `region_info` VALUES ('2338', '421121', '团风县', '421100');
INSERT INTO `region_info` VALUES ('2339', '421122', '红安县', '421100');
INSERT INTO `region_info` VALUES ('2340', '421123', '罗田县', '421100');
INSERT INTO `region_info` VALUES ('2341', '421124', '英山县', '421100');
INSERT INTO `region_info` VALUES ('2342', '421125', '浠水县', '421100');
INSERT INTO `region_info` VALUES ('2343', '421126', '蕲春县', '421100');
INSERT INTO `region_info` VALUES ('2344', '421127', '黄梅县', '421100');
INSERT INTO `region_info` VALUES ('2345', '421181', '麻城市', '421100');
INSERT INTO `region_info` VALUES ('2346', '421182', '武穴市', '421100');
INSERT INTO `region_info` VALUES ('2347', '421201', '市辖区', '421200');
INSERT INTO `region_info` VALUES ('2348', '421202', '咸安区', '421200');
INSERT INTO `region_info` VALUES ('2349', '421221', '嘉鱼县', '421200');
INSERT INTO `region_info` VALUES ('2350', '421222', '通城县', '421200');
INSERT INTO `region_info` VALUES ('2351', '421223', '崇阳县', '421200');
INSERT INTO `region_info` VALUES ('2352', '421224', '通山县', '421200');
INSERT INTO `region_info` VALUES ('2353', '421281', '赤壁市', '421200');
INSERT INTO `region_info` VALUES ('2354', '421301', '市辖区', '421300');
INSERT INTO `region_info` VALUES ('2355', '421302', '曾都区', '421300');
INSERT INTO `region_info` VALUES ('2356', '421381', '广水市', '421300');
INSERT INTO `region_info` VALUES ('2357', '422801', '恩施市', '422800');
INSERT INTO `region_info` VALUES ('2358', '422802', '利川市', '422800');
INSERT INTO `region_info` VALUES ('2359', '422822', '建始县', '422800');
INSERT INTO `region_info` VALUES ('2360', '422823', '巴东县', '422800');
INSERT INTO `region_info` VALUES ('2361', '422825', '宣恩县', '422800');
INSERT INTO `region_info` VALUES ('2362', '422826', '咸丰县', '422800');
INSERT INTO `region_info` VALUES ('2363', '422827', '来凤县', '422800');
INSERT INTO `region_info` VALUES ('2364', '422828', '鹤峰县', '422800');
INSERT INTO `region_info` VALUES ('2365', '429004', '仙桃市', '429000');
INSERT INTO `region_info` VALUES ('2366', '429005', '潜江市', '429000');
INSERT INTO `region_info` VALUES ('2367', '429006', '天门市', '429000');
INSERT INTO `region_info` VALUES ('2368', '429021', '神农架林区', '429000');
INSERT INTO `region_info` VALUES ('2369', '430101', '市辖区', '430100');
INSERT INTO `region_info` VALUES ('2370', '430102', '芙蓉区', '430100');
INSERT INTO `region_info` VALUES ('2371', '430103', '天心区', '430100');
INSERT INTO `region_info` VALUES ('2372', '430104', '岳麓区', '430100');
INSERT INTO `region_info` VALUES ('2373', '430105', '开福区', '430100');
INSERT INTO `region_info` VALUES ('2374', '430111', '雨花区', '430100');
INSERT INTO `region_info` VALUES ('2375', '430121', '长沙县', '430100');
INSERT INTO `region_info` VALUES ('2376', '430122', '望城县', '430100');
INSERT INTO `region_info` VALUES ('2377', '430124', '宁乡县', '430100');
INSERT INTO `region_info` VALUES ('2378', '430181', '浏阳市', '430100');
INSERT INTO `region_info` VALUES ('2379', '430201', '市辖区', '430200');
INSERT INTO `region_info` VALUES ('2380', '430202', '荷塘区', '430200');
INSERT INTO `region_info` VALUES ('2381', '430203', '芦淞区', '430200');
INSERT INTO `region_info` VALUES ('2382', '430204', '石峰区', '430200');
INSERT INTO `region_info` VALUES ('2383', '430211', '天元区', '430200');
INSERT INTO `region_info` VALUES ('2384', '430221', '株洲县', '430200');
INSERT INTO `region_info` VALUES ('2385', '430223', '攸　县', '430200');
INSERT INTO `region_info` VALUES ('2386', '430224', '茶陵县', '430200');
INSERT INTO `region_info` VALUES ('2387', '430225', '炎陵县', '430200');
INSERT INTO `region_info` VALUES ('2388', '430281', '醴陵市', '430200');
INSERT INTO `region_info` VALUES ('2389', '430301', '市辖区', '430300');
INSERT INTO `region_info` VALUES ('2390', '430302', '雨湖区', '430300');
INSERT INTO `region_info` VALUES ('2391', '430304', '岳塘区', '430300');
INSERT INTO `region_info` VALUES ('2392', '430321', '湘潭县', '430300');
INSERT INTO `region_info` VALUES ('2393', '430381', '湘乡市', '430300');
INSERT INTO `region_info` VALUES ('2394', '430382', '韶山市', '430300');
INSERT INTO `region_info` VALUES ('2395', '430401', '市辖区', '430400');
INSERT INTO `region_info` VALUES ('2396', '430405', '珠晖区', '430400');
INSERT INTO `region_info` VALUES ('2397', '430406', '雁峰区', '430400');
INSERT INTO `region_info` VALUES ('2398', '430407', '石鼓区', '430400');
INSERT INTO `region_info` VALUES ('2399', '430408', '蒸湘区', '430400');
INSERT INTO `region_info` VALUES ('2400', '430412', '南岳区', '430400');
INSERT INTO `region_info` VALUES ('2401', '430421', '衡阳县', '430400');
INSERT INTO `region_info` VALUES ('2402', '430422', '衡南县', '430400');
INSERT INTO `region_info` VALUES ('2403', '430423', '衡山县', '430400');
INSERT INTO `region_info` VALUES ('2404', '430424', '衡东县', '430400');
INSERT INTO `region_info` VALUES ('2405', '430426', '祁东县', '430400');
INSERT INTO `region_info` VALUES ('2406', '430481', '耒阳市', '430400');
INSERT INTO `region_info` VALUES ('2407', '430482', '常宁市', '430400');
INSERT INTO `region_info` VALUES ('2408', '430501', '市辖区', '430500');
INSERT INTO `region_info` VALUES ('2409', '430502', '双清区', '430500');
INSERT INTO `region_info` VALUES ('2410', '430503', '大祥区', '430500');
INSERT INTO `region_info` VALUES ('2411', '430511', '北塔区', '430500');
INSERT INTO `region_info` VALUES ('2412', '430521', '邵东县', '430500');
INSERT INTO `region_info` VALUES ('2413', '430522', '新邵县', '430500');
INSERT INTO `region_info` VALUES ('2414', '430523', '邵阳县', '430500');
INSERT INTO `region_info` VALUES ('2415', '430524', '隆回县', '430500');
INSERT INTO `region_info` VALUES ('2416', '430525', '洞口县', '430500');
INSERT INTO `region_info` VALUES ('2417', '430527', '绥宁县', '430500');
INSERT INTO `region_info` VALUES ('2418', '430528', '新宁县', '430500');
INSERT INTO `region_info` VALUES ('2419', '430529', '城步苗族自治县', '430500');
INSERT INTO `region_info` VALUES ('2420', '430581', '武冈市', '430500');
INSERT INTO `region_info` VALUES ('2421', '430601', '市辖区', '430600');
INSERT INTO `region_info` VALUES ('2422', '430602', '岳阳楼区', '430600');
INSERT INTO `region_info` VALUES ('2423', '430603', '云溪区', '430600');
INSERT INTO `region_info` VALUES ('2424', '430611', '君山区', '430600');
INSERT INTO `region_info` VALUES ('2425', '430621', '岳阳县', '430600');
INSERT INTO `region_info` VALUES ('2426', '430623', '华容县', '430600');
INSERT INTO `region_info` VALUES ('2427', '430624', '湘阴县', '430600');
INSERT INTO `region_info` VALUES ('2428', '430626', '平江县', '430600');
INSERT INTO `region_info` VALUES ('2429', '430681', '汨罗市', '430600');
INSERT INTO `region_info` VALUES ('2430', '430682', '临湘市', '430600');
INSERT INTO `region_info` VALUES ('2431', '430701', '市辖区', '430700');
INSERT INTO `region_info` VALUES ('2432', '430702', '武陵区', '430700');
INSERT INTO `region_info` VALUES ('2433', '430703', '鼎城区', '430700');
INSERT INTO `region_info` VALUES ('2434', '430721', '安乡县', '430700');
INSERT INTO `region_info` VALUES ('2435', '430722', '汉寿县', '430700');
INSERT INTO `region_info` VALUES ('2436', '430723', '澧　县', '430700');
INSERT INTO `region_info` VALUES ('2437', '430724', '临澧县', '430700');
INSERT INTO `region_info` VALUES ('2438', '430725', '桃源县', '430700');
INSERT INTO `region_info` VALUES ('2439', '430726', '石门县', '430700');
INSERT INTO `region_info` VALUES ('2440', '430781', '津市市', '430700');
INSERT INTO `region_info` VALUES ('2441', '430801', '市辖区', '430800');
INSERT INTO `region_info` VALUES ('2442', '430802', '永定区', '430800');
INSERT INTO `region_info` VALUES ('2443', '430811', '武陵源区', '430800');
INSERT INTO `region_info` VALUES ('2444', '430821', '慈利县', '430800');
INSERT INTO `region_info` VALUES ('2445', '430822', '桑植县', '430800');
INSERT INTO `region_info` VALUES ('2446', '430901', '市辖区', '430900');
INSERT INTO `region_info` VALUES ('2447', '430902', '资阳区', '430900');
INSERT INTO `region_info` VALUES ('2448', '430903', '赫山区', '430900');
INSERT INTO `region_info` VALUES ('2449', '430921', '南　县', '430900');
INSERT INTO `region_info` VALUES ('2450', '430922', '桃江县', '430900');
INSERT INTO `region_info` VALUES ('2451', '430923', '安化县', '430900');
INSERT INTO `region_info` VALUES ('2452', '430981', '沅江市', '430900');
INSERT INTO `region_info` VALUES ('2453', '431001', '市辖区', '431000');
INSERT INTO `region_info` VALUES ('2454', '431002', '北湖区', '431000');
INSERT INTO `region_info` VALUES ('2455', '431003', '苏仙区', '431000');
INSERT INTO `region_info` VALUES ('2456', '431021', '桂阳县', '431000');
INSERT INTO `region_info` VALUES ('2457', '431022', '宜章县', '431000');
INSERT INTO `region_info` VALUES ('2458', '431023', '永兴县', '431000');
INSERT INTO `region_info` VALUES ('2459', '431024', '嘉禾县', '431000');
INSERT INTO `region_info` VALUES ('2460', '431025', '临武县', '431000');
INSERT INTO `region_info` VALUES ('2461', '431026', '汝城县', '431000');
INSERT INTO `region_info` VALUES ('2462', '431027', '桂东县', '431000');
INSERT INTO `region_info` VALUES ('2463', '431028', '安仁县', '431000');
INSERT INTO `region_info` VALUES ('2464', '431081', '资兴市', '431000');
INSERT INTO `region_info` VALUES ('2465', '431101', '市辖区', '431100');
INSERT INTO `region_info` VALUES ('2466', '431102', '芝山区', '431100');
INSERT INTO `region_info` VALUES ('2467', '431103', '冷水滩区', '431100');
INSERT INTO `region_info` VALUES ('2468', '431121', '祁阳县', '431100');
INSERT INTO `region_info` VALUES ('2469', '431122', '东安县', '431100');
INSERT INTO `region_info` VALUES ('2470', '431123', '双牌县', '431100');
INSERT INTO `region_info` VALUES ('2471', '431124', '道　县', '431100');
INSERT INTO `region_info` VALUES ('2472', '431125', '江永县', '431100');
INSERT INTO `region_info` VALUES ('2473', '431126', '宁远县', '431100');
INSERT INTO `region_info` VALUES ('2474', '431127', '蓝山县', '431100');
INSERT INTO `region_info` VALUES ('2475', '431128', '新田县', '431100');
INSERT INTO `region_info` VALUES ('2476', '431129', '江华瑶族自治县', '431100');
INSERT INTO `region_info` VALUES ('2477', '431201', '市辖区', '431200');
INSERT INTO `region_info` VALUES ('2478', '431202', '鹤城区', '431200');
INSERT INTO `region_info` VALUES ('2479', '431221', '中方县', '431200');
INSERT INTO `region_info` VALUES ('2480', '431222', '沅陵县', '431200');
INSERT INTO `region_info` VALUES ('2481', '431223', '辰溪县', '431200');
INSERT INTO `region_info` VALUES ('2482', '431224', '溆浦县', '431200');
INSERT INTO `region_info` VALUES ('2483', '431225', '会同县', '431200');
INSERT INTO `region_info` VALUES ('2484', '431226', '麻阳苗族自治县', '431200');
INSERT INTO `region_info` VALUES ('2485', '431227', '新晃侗族自治县', '431200');
INSERT INTO `region_info` VALUES ('2486', '431228', '芷江侗族自治县', '431200');
INSERT INTO `region_info` VALUES ('2487', '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `region_info` VALUES ('2488', '431230', '通道侗族自治县', '431200');
INSERT INTO `region_info` VALUES ('2489', '431281', '洪江市', '431200');
INSERT INTO `region_info` VALUES ('2490', '431301', '市辖区', '431300');
INSERT INTO `region_info` VALUES ('2491', '431302', '娄星区', '431300');
INSERT INTO `region_info` VALUES ('2492', '431321', '双峰县', '431300');
INSERT INTO `region_info` VALUES ('2493', '431322', '新化县', '431300');
INSERT INTO `region_info` VALUES ('2494', '431381', '冷水江市', '431300');
INSERT INTO `region_info` VALUES ('2495', '431382', '涟源市', '431300');
INSERT INTO `region_info` VALUES ('2496', '433101', '吉首市', '433100');
INSERT INTO `region_info` VALUES ('2497', '433122', '泸溪县', '433100');
INSERT INTO `region_info` VALUES ('2498', '433123', '凤凰县', '433100');
INSERT INTO `region_info` VALUES ('2499', '433124', '花垣县', '433100');
INSERT INTO `region_info` VALUES ('2500', '433125', '保靖县', '433100');
INSERT INTO `region_info` VALUES ('2501', '433126', '古丈县', '433100');
INSERT INTO `region_info` VALUES ('2502', '433127', '永顺县', '433100');
INSERT INTO `region_info` VALUES ('2503', '433130', '龙山县', '433100');
INSERT INTO `region_info` VALUES ('2504', '440101', '市辖区', '440100');
INSERT INTO `region_info` VALUES ('2505', '440102', '东山区', '440100');
INSERT INTO `region_info` VALUES ('2506', '440103', '荔湾区', '440100');
INSERT INTO `region_info` VALUES ('2507', '440104', '越秀区', '440100');
INSERT INTO `region_info` VALUES ('2508', '440105', '海珠区', '440100');
INSERT INTO `region_info` VALUES ('2509', '440106', '天河区', '440100');
INSERT INTO `region_info` VALUES ('2510', '440107', '芳村区', '440100');
INSERT INTO `region_info` VALUES ('2511', '440111', '白云区', '440100');
INSERT INTO `region_info` VALUES ('2512', '440112', '黄埔区', '440100');
INSERT INTO `region_info` VALUES ('2513', '440113', '番禺区', '440100');
INSERT INTO `region_info` VALUES ('2514', '440114', '花都区', '440100');
INSERT INTO `region_info` VALUES ('2515', '440183', '增城市', '440100');
INSERT INTO `region_info` VALUES ('2516', '440184', '从化市', '440100');
INSERT INTO `region_info` VALUES ('2517', '440201', '市辖区', '440200');
INSERT INTO `region_info` VALUES ('2518', '440203', '武江区', '440200');
INSERT INTO `region_info` VALUES ('2519', '440204', '浈江区', '440200');
INSERT INTO `region_info` VALUES ('2520', '440205', '曲江区', '440200');
INSERT INTO `region_info` VALUES ('2521', '440222', '始兴县', '440200');
INSERT INTO `region_info` VALUES ('2522', '440224', '仁化县', '440200');
INSERT INTO `region_info` VALUES ('2523', '440229', '翁源县', '440200');
INSERT INTO `region_info` VALUES ('2524', '440232', '乳源瑶族自治县', '440200');
INSERT INTO `region_info` VALUES ('2525', '440233', '新丰县', '440200');
INSERT INTO `region_info` VALUES ('2526', '440281', '乐昌市', '440200');
INSERT INTO `region_info` VALUES ('2527', '440282', '南雄市', '440200');
INSERT INTO `region_info` VALUES ('2528', '440301', '市辖区', '440300');
INSERT INTO `region_info` VALUES ('2529', '440303', '罗湖区', '440300');
INSERT INTO `region_info` VALUES ('2530', '440304', '福田区', '440300');
INSERT INTO `region_info` VALUES ('2531', '440305', '南山区', '440300');
INSERT INTO `region_info` VALUES ('2532', '440306', '宝安区', '440300');
INSERT INTO `region_info` VALUES ('2533', '440307', '龙岗区', '440300');
INSERT INTO `region_info` VALUES ('2534', '440308', '盐田区', '440300');
INSERT INTO `region_info` VALUES ('2535', '440401', '市辖区', '440400');
INSERT INTO `region_info` VALUES ('2536', '440402', '香洲区', '440400');
INSERT INTO `region_info` VALUES ('2537', '440403', '斗门区', '440400');
INSERT INTO `region_info` VALUES ('2538', '440404', '金湾区', '440400');
INSERT INTO `region_info` VALUES ('2539', '440501', '市辖区', '440500');
INSERT INTO `region_info` VALUES ('2540', '440507', '龙湖区', '440500');
INSERT INTO `region_info` VALUES ('2541', '440511', '金平区', '440500');
INSERT INTO `region_info` VALUES ('2542', '440512', '濠江区', '440500');
INSERT INTO `region_info` VALUES ('2543', '440513', '潮阳区', '440500');
INSERT INTO `region_info` VALUES ('2544', '440514', '潮南区', '440500');
INSERT INTO `region_info` VALUES ('2545', '440515', '澄海区', '440500');
INSERT INTO `region_info` VALUES ('2546', '440523', '南澳县', '440500');
INSERT INTO `region_info` VALUES ('2547', '440601', '市辖区', '440600');
INSERT INTO `region_info` VALUES ('2548', '440604', '禅城区', '440600');
INSERT INTO `region_info` VALUES ('2549', '440605', '南海区', '440600');
INSERT INTO `region_info` VALUES ('2550', '440606', '顺德区', '440600');
INSERT INTO `region_info` VALUES ('2551', '440607', '三水区', '440600');
INSERT INTO `region_info` VALUES ('2552', '440608', '高明区', '440600');
INSERT INTO `region_info` VALUES ('2553', '440701', '市辖区', '440700');
INSERT INTO `region_info` VALUES ('2554', '440703', '蓬江区', '440700');
INSERT INTO `region_info` VALUES ('2555', '440704', '江海区', '440700');
INSERT INTO `region_info` VALUES ('2556', '440705', '新会区', '440700');
INSERT INTO `region_info` VALUES ('2557', '440781', '台山市', '440700');
INSERT INTO `region_info` VALUES ('2558', '440783', '开平市', '440700');
INSERT INTO `region_info` VALUES ('2559', '440784', '鹤山市', '440700');
INSERT INTO `region_info` VALUES ('2560', '440785', '恩平市', '440700');
INSERT INTO `region_info` VALUES ('2561', '440801', '市辖区', '440800');
INSERT INTO `region_info` VALUES ('2562', '440802', '赤坎区', '440800');
INSERT INTO `region_info` VALUES ('2563', '440803', '霞山区', '440800');
INSERT INTO `region_info` VALUES ('2564', '440804', '坡头区', '440800');
INSERT INTO `region_info` VALUES ('2565', '440811', '麻章区', '440800');
INSERT INTO `region_info` VALUES ('2566', '440823', '遂溪县', '440800');
INSERT INTO `region_info` VALUES ('2567', '440825', '徐闻县', '440800');
INSERT INTO `region_info` VALUES ('2568', '440881', '廉江市', '440800');
INSERT INTO `region_info` VALUES ('2569', '440882', '雷州市', '440800');
INSERT INTO `region_info` VALUES ('2570', '440883', '吴川市', '440800');
INSERT INTO `region_info` VALUES ('2571', '440901', '市辖区', '440900');
INSERT INTO `region_info` VALUES ('2572', '440902', '茂南区', '440900');
INSERT INTO `region_info` VALUES ('2573', '440903', '茂港区', '440900');
INSERT INTO `region_info` VALUES ('2574', '440923', '电白县', '440900');
INSERT INTO `region_info` VALUES ('2575', '440981', '高州市', '440900');
INSERT INTO `region_info` VALUES ('2576', '440982', '化州市', '440900');
INSERT INTO `region_info` VALUES ('2577', '440983', '信宜市', '440900');
INSERT INTO `region_info` VALUES ('2578', '441201', '市辖区', '441200');
INSERT INTO `region_info` VALUES ('2579', '441202', '端州区', '441200');
INSERT INTO `region_info` VALUES ('2580', '441203', '鼎湖区', '441200');
INSERT INTO `region_info` VALUES ('2581', '441223', '广宁县', '441200');
INSERT INTO `region_info` VALUES ('2582', '441224', '怀集县', '441200');
INSERT INTO `region_info` VALUES ('2583', '441225', '封开县', '441200');
INSERT INTO `region_info` VALUES ('2584', '441226', '德庆县', '441200');
INSERT INTO `region_info` VALUES ('2585', '441283', '高要市', '441200');
INSERT INTO `region_info` VALUES ('2586', '441284', '四会市', '441200');
INSERT INTO `region_info` VALUES ('2587', '441301', '市辖区', '441300');
INSERT INTO `region_info` VALUES ('2588', '441302', '惠城区', '441300');
INSERT INTO `region_info` VALUES ('2589', '441303', '惠阳区', '441300');
INSERT INTO `region_info` VALUES ('2590', '441322', '博罗县', '441300');
INSERT INTO `region_info` VALUES ('2591', '441323', '惠东县', '441300');
INSERT INTO `region_info` VALUES ('2592', '441324', '龙门县', '441300');
INSERT INTO `region_info` VALUES ('2593', '441401', '市辖区', '441400');
INSERT INTO `region_info` VALUES ('2594', '441402', '梅江区', '441400');
INSERT INTO `region_info` VALUES ('2595', '441421', '梅　县', '441400');
INSERT INTO `region_info` VALUES ('2596', '441422', '大埔县', '441400');
INSERT INTO `region_info` VALUES ('2597', '441423', '丰顺县', '441400');
INSERT INTO `region_info` VALUES ('2598', '441424', '五华县', '441400');
INSERT INTO `region_info` VALUES ('2599', '441426', '平远县', '441400');
INSERT INTO `region_info` VALUES ('2600', '441427', '蕉岭县', '441400');
INSERT INTO `region_info` VALUES ('2601', '441481', '兴宁市', '441400');
INSERT INTO `region_info` VALUES ('2602', '441501', '市辖区', '441500');
INSERT INTO `region_info` VALUES ('2603', '441502', '城　区', '441500');
INSERT INTO `region_info` VALUES ('2604', '441521', '海丰县', '441500');
INSERT INTO `region_info` VALUES ('2605', '441523', '陆河县', '441500');
INSERT INTO `region_info` VALUES ('2606', '441581', '陆丰市', '441500');
INSERT INTO `region_info` VALUES ('2607', '441601', '市辖区', '441600');
INSERT INTO `region_info` VALUES ('2608', '441602', '源城区', '441600');
INSERT INTO `region_info` VALUES ('2609', '441621', '紫金县', '441600');
INSERT INTO `region_info` VALUES ('2610', '441622', '龙川县', '441600');
INSERT INTO `region_info` VALUES ('2611', '441623', '连平县', '441600');
INSERT INTO `region_info` VALUES ('2612', '441624', '和平县', '441600');
INSERT INTO `region_info` VALUES ('2613', '441625', '东源县', '441600');
INSERT INTO `region_info` VALUES ('2614', '441701', '市辖区', '441700');
INSERT INTO `region_info` VALUES ('2615', '441702', '江城区', '441700');
INSERT INTO `region_info` VALUES ('2616', '441721', '阳西县', '441700');
INSERT INTO `region_info` VALUES ('2617', '441723', '阳东县', '441700');
INSERT INTO `region_info` VALUES ('2618', '441781', '阳春市', '441700');
INSERT INTO `region_info` VALUES ('2619', '441801', '市辖区', '441800');
INSERT INTO `region_info` VALUES ('2620', '441802', '清城区', '441800');
INSERT INTO `region_info` VALUES ('2621', '441821', '佛冈县', '441800');
INSERT INTO `region_info` VALUES ('2622', '441823', '阳山县', '441800');
INSERT INTO `region_info` VALUES ('2623', '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `region_info` VALUES ('2624', '441826', '连南瑶族自治县', '441800');
INSERT INTO `region_info` VALUES ('2625', '441827', '清新县', '441800');
INSERT INTO `region_info` VALUES ('2626', '441881', '英德市', '441800');
INSERT INTO `region_info` VALUES ('2627', '441882', '连州市', '441800');
INSERT INTO `region_info` VALUES ('2628', '445101', '市辖区', '445100');
INSERT INTO `region_info` VALUES ('2629', '445102', '湘桥区', '445100');
INSERT INTO `region_info` VALUES ('2630', '445121', '潮安县', '445100');
INSERT INTO `region_info` VALUES ('2631', '445122', '饶平县', '445100');
INSERT INTO `region_info` VALUES ('2632', '445201', '市辖区', '445200');
INSERT INTO `region_info` VALUES ('2633', '445202', '榕城区', '445200');
INSERT INTO `region_info` VALUES ('2634', '445221', '揭东县', '445200');
INSERT INTO `region_info` VALUES ('2635', '445222', '揭西县', '445200');
INSERT INTO `region_info` VALUES ('2636', '445224', '惠来县', '445200');
INSERT INTO `region_info` VALUES ('2637', '445281', '普宁市', '445200');
INSERT INTO `region_info` VALUES ('2638', '445301', '市辖区', '445300');
INSERT INTO `region_info` VALUES ('2639', '445302', '云城区', '445300');
INSERT INTO `region_info` VALUES ('2640', '445321', '新兴县', '445300');
INSERT INTO `region_info` VALUES ('2641', '445322', '郁南县', '445300');
INSERT INTO `region_info` VALUES ('2642', '445323', '云安县', '445300');
INSERT INTO `region_info` VALUES ('2643', '445381', '罗定市', '445300');
INSERT INTO `region_info` VALUES ('2644', '450101', '市辖区', '450100');
INSERT INTO `region_info` VALUES ('2645', '450102', '兴宁区', '450100');
INSERT INTO `region_info` VALUES ('2646', '450103', '青秀区', '450100');
INSERT INTO `region_info` VALUES ('2647', '450105', '江南区', '450100');
INSERT INTO `region_info` VALUES ('2648', '450107', '西乡塘区', '450100');
INSERT INTO `region_info` VALUES ('2649', '450108', '良庆区', '450100');
INSERT INTO `region_info` VALUES ('2650', '450109', '邕宁区', '450100');
INSERT INTO `region_info` VALUES ('2651', '450122', '武鸣县', '450100');
INSERT INTO `region_info` VALUES ('2652', '450123', '隆安县', '450100');
INSERT INTO `region_info` VALUES ('2653', '450124', '马山县', '450100');
INSERT INTO `region_info` VALUES ('2654', '450125', '上林县', '450100');
INSERT INTO `region_info` VALUES ('2655', '450126', '宾阳县', '450100');
INSERT INTO `region_info` VALUES ('2656', '450127', '横　县', '450100');
INSERT INTO `region_info` VALUES ('2657', '450201', '市辖区', '450200');
INSERT INTO `region_info` VALUES ('2658', '450202', '城中区', '450200');
INSERT INTO `region_info` VALUES ('2659', '450203', '鱼峰区', '450200');
INSERT INTO `region_info` VALUES ('2660', '450204', '柳南区', '450200');
INSERT INTO `region_info` VALUES ('2661', '450205', '柳北区', '450200');
INSERT INTO `region_info` VALUES ('2662', '450221', '柳江县', '450200');
INSERT INTO `region_info` VALUES ('2663', '450222', '柳城县', '450200');
INSERT INTO `region_info` VALUES ('2664', '450223', '鹿寨县', '450200');
INSERT INTO `region_info` VALUES ('2665', '450224', '融安县', '450200');
INSERT INTO `region_info` VALUES ('2666', '450225', '融水苗族自治县', '450200');
INSERT INTO `region_info` VALUES ('2667', '450226', '三江侗族自治县', '450200');
INSERT INTO `region_info` VALUES ('2668', '450301', '市辖区', '450300');
INSERT INTO `region_info` VALUES ('2669', '450302', '秀峰区', '450300');
INSERT INTO `region_info` VALUES ('2670', '450303', '叠彩区', '450300');
INSERT INTO `region_info` VALUES ('2671', '450304', '象山区', '450300');
INSERT INTO `region_info` VALUES ('2672', '450305', '七星区', '450300');
INSERT INTO `region_info` VALUES ('2673', '450311', '雁山区', '450300');
INSERT INTO `region_info` VALUES ('2674', '450321', '阳朔县', '450300');
INSERT INTO `region_info` VALUES ('2675', '450322', '临桂县', '450300');
INSERT INTO `region_info` VALUES ('2676', '450323', '灵川县', '450300');
INSERT INTO `region_info` VALUES ('2677', '450324', '全州县', '450300');
INSERT INTO `region_info` VALUES ('2678', '450325', '兴安县', '450300');
INSERT INTO `region_info` VALUES ('2679', '450326', '永福县', '450300');
INSERT INTO `region_info` VALUES ('2680', '450327', '灌阳县', '450300');
INSERT INTO `region_info` VALUES ('2681', '450328', '龙胜各族自治县', '450300');
INSERT INTO `region_info` VALUES ('2682', '450329', '资源县', '450300');
INSERT INTO `region_info` VALUES ('2683', '450330', '平乐县', '450300');
INSERT INTO `region_info` VALUES ('2684', '450331', '荔蒲县', '450300');
INSERT INTO `region_info` VALUES ('2685', '450332', '恭城瑶族自治县', '450300');
INSERT INTO `region_info` VALUES ('2686', '450401', '市辖区', '450400');
INSERT INTO `region_info` VALUES ('2687', '450403', '万秀区', '450400');
INSERT INTO `region_info` VALUES ('2688', '450404', '蝶山区', '450400');
INSERT INTO `region_info` VALUES ('2689', '450405', '长洲区', '450400');
INSERT INTO `region_info` VALUES ('2690', '450421', '苍梧县', '450400');
INSERT INTO `region_info` VALUES ('2691', '450422', '藤　县', '450400');
INSERT INTO `region_info` VALUES ('2692', '450423', '蒙山县', '450400');
INSERT INTO `region_info` VALUES ('2693', '450481', '岑溪市', '450400');
INSERT INTO `region_info` VALUES ('2694', '450501', '市辖区', '450500');
INSERT INTO `region_info` VALUES ('2695', '450502', '海城区', '450500');
INSERT INTO `region_info` VALUES ('2696', '450503', '银海区', '450500');
INSERT INTO `region_info` VALUES ('2697', '450512', '铁山港区', '450500');
INSERT INTO `region_info` VALUES ('2698', '450521', '合浦县', '450500');
INSERT INTO `region_info` VALUES ('2699', '450601', '市辖区', '450600');
INSERT INTO `region_info` VALUES ('2700', '450602', '港口区', '450600');
INSERT INTO `region_info` VALUES ('2701', '450603', '防城区', '450600');
INSERT INTO `region_info` VALUES ('2702', '450621', '上思县', '450600');
INSERT INTO `region_info` VALUES ('2703', '450681', '东兴市', '450600');
INSERT INTO `region_info` VALUES ('2704', '450701', '市辖区', '450700');
INSERT INTO `region_info` VALUES ('2705', '450702', '钦南区', '450700');
INSERT INTO `region_info` VALUES ('2706', '450703', '钦北区', '450700');
INSERT INTO `region_info` VALUES ('2707', '450721', '灵山县', '450700');
INSERT INTO `region_info` VALUES ('2708', '450722', '浦北县', '450700');
INSERT INTO `region_info` VALUES ('2709', '450801', '市辖区', '450800');
INSERT INTO `region_info` VALUES ('2710', '450802', '港北区', '450800');
INSERT INTO `region_info` VALUES ('2711', '450803', '港南区', '450800');
INSERT INTO `region_info` VALUES ('2712', '450804', '覃塘区', '450800');
INSERT INTO `region_info` VALUES ('2713', '450821', '平南县', '450800');
INSERT INTO `region_info` VALUES ('2714', '450881', '桂平市', '450800');
INSERT INTO `region_info` VALUES ('2715', '450901', '市辖区', '450900');
INSERT INTO `region_info` VALUES ('2716', '450902', '玉州区', '450900');
INSERT INTO `region_info` VALUES ('2717', '450921', '容　县', '450900');
INSERT INTO `region_info` VALUES ('2718', '450922', '陆川县', '450900');
INSERT INTO `region_info` VALUES ('2719', '450923', '博白县', '450900');
INSERT INTO `region_info` VALUES ('2720', '450924', '兴业县', '450900');
INSERT INTO `region_info` VALUES ('2721', '450981', '北流市', '450900');
INSERT INTO `region_info` VALUES ('2722', '451001', '市辖区', '451000');
INSERT INTO `region_info` VALUES ('2723', '451002', '右江区', '451000');
INSERT INTO `region_info` VALUES ('2724', '451021', '田阳县', '451000');
INSERT INTO `region_info` VALUES ('2725', '451022', '田东县', '451000');
INSERT INTO `region_info` VALUES ('2726', '451023', '平果县', '451000');
INSERT INTO `region_info` VALUES ('2727', '451024', '德保县', '451000');
INSERT INTO `region_info` VALUES ('2728', '451025', '靖西县', '451000');
INSERT INTO `region_info` VALUES ('2729', '451026', '那坡县', '451000');
INSERT INTO `region_info` VALUES ('2730', '451027', '凌云县', '451000');
INSERT INTO `region_info` VALUES ('2731', '451028', '乐业县', '451000');
INSERT INTO `region_info` VALUES ('2732', '451029', '田林县', '451000');
INSERT INTO `region_info` VALUES ('2733', '451030', '西林县', '451000');
INSERT INTO `region_info` VALUES ('2734', '451031', '隆林各族自治县', '451000');
INSERT INTO `region_info` VALUES ('2735', '451101', '市辖区', '451100');
INSERT INTO `region_info` VALUES ('2736', '451102', '八步区', '451100');
INSERT INTO `region_info` VALUES ('2737', '451121', '昭平县', '451100');
INSERT INTO `region_info` VALUES ('2738', '451122', '钟山县', '451100');
INSERT INTO `region_info` VALUES ('2739', '451123', '富川瑶族自治县', '451100');
INSERT INTO `region_info` VALUES ('2740', '451201', '市辖区', '451200');
INSERT INTO `region_info` VALUES ('2741', '451202', '金城江区', '451200');
INSERT INTO `region_info` VALUES ('2742', '451221', '南丹县', '451200');
INSERT INTO `region_info` VALUES ('2743', '451222', '天峨县', '451200');
INSERT INTO `region_info` VALUES ('2744', '451223', '凤山县', '451200');
INSERT INTO `region_info` VALUES ('2745', '451224', '东兰县', '451200');
INSERT INTO `region_info` VALUES ('2746', '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `region_info` VALUES ('2747', '451226', '环江毛南族自治县', '451200');
INSERT INTO `region_info` VALUES ('2748', '451227', '巴马瑶族自治县', '451200');
INSERT INTO `region_info` VALUES ('2749', '451228', '都安瑶族自治县', '451200');
INSERT INTO `region_info` VALUES ('2750', '451229', '大化瑶族自治县', '451200');
INSERT INTO `region_info` VALUES ('2751', '451281', '宜州市', '451200');
INSERT INTO `region_info` VALUES ('2752', '451301', '市辖区', '451300');
INSERT INTO `region_info` VALUES ('2753', '451302', '兴宾区', '451300');
INSERT INTO `region_info` VALUES ('2754', '451321', '忻城县', '451300');
INSERT INTO `region_info` VALUES ('2755', '451322', '象州县', '451300');
INSERT INTO `region_info` VALUES ('2756', '451323', '武宣县', '451300');
INSERT INTO `region_info` VALUES ('2757', '451324', '金秀瑶族自治县', '451300');
INSERT INTO `region_info` VALUES ('2758', '451381', '合山市', '451300');
INSERT INTO `region_info` VALUES ('2759', '451401', '市辖区', '451400');
INSERT INTO `region_info` VALUES ('2760', '451402', '江洲区', '451400');
INSERT INTO `region_info` VALUES ('2761', '451421', '扶绥县', '451400');
INSERT INTO `region_info` VALUES ('2762', '451422', '宁明县', '451400');
INSERT INTO `region_info` VALUES ('2763', '451423', '龙州县', '451400');
INSERT INTO `region_info` VALUES ('2764', '451424', '大新县', '451400');
INSERT INTO `region_info` VALUES ('2765', '451425', '天等县', '451400');
INSERT INTO `region_info` VALUES ('2766', '451481', '凭祥市', '451400');
INSERT INTO `region_info` VALUES ('2767', '460101', '市辖区', '460100');
INSERT INTO `region_info` VALUES ('2768', '460105', '秀英区', '460100');
INSERT INTO `region_info` VALUES ('2769', '460106', '龙华区', '460100');
INSERT INTO `region_info` VALUES ('2770', '460107', '琼山区', '460100');
INSERT INTO `region_info` VALUES ('2771', '460108', '美兰区', '460100');
INSERT INTO `region_info` VALUES ('2772', '460201', '市辖区', '460200');
INSERT INTO `region_info` VALUES ('2773', '469001', '五指山市', '469000');
INSERT INTO `region_info` VALUES ('2774', '469002', '琼海市', '469000');
INSERT INTO `region_info` VALUES ('2775', '469003', '儋州市', '469000');
INSERT INTO `region_info` VALUES ('2776', '469005', '文昌市', '469000');
INSERT INTO `region_info` VALUES ('2777', '469006', '万宁市', '469000');
INSERT INTO `region_info` VALUES ('2778', '469007', '东方市', '469000');
INSERT INTO `region_info` VALUES ('2779', '469025', '定安县', '469000');
INSERT INTO `region_info` VALUES ('2780', '469026', '屯昌县', '469000');
INSERT INTO `region_info` VALUES ('2781', '469027', '澄迈县', '469000');
INSERT INTO `region_info` VALUES ('2782', '469028', '临高县', '469000');
INSERT INTO `region_info` VALUES ('2783', '469030', '白沙黎族自治县', '469000');
INSERT INTO `region_info` VALUES ('2784', '469031', '昌江黎族自治县', '469000');
INSERT INTO `region_info` VALUES ('2785', '469033', '乐东黎族自治县', '469000');
INSERT INTO `region_info` VALUES ('2786', '469034', '陵水黎族自治县', '469000');
INSERT INTO `region_info` VALUES ('2787', '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `region_info` VALUES ('2788', '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `region_info` VALUES ('2789', '469037', '西沙群岛', '469000');
INSERT INTO `region_info` VALUES ('2790', '469038', '南沙群岛', '469000');
INSERT INTO `region_info` VALUES ('2791', '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `region_info` VALUES ('2792', '500101', '万州区', '500100');
INSERT INTO `region_info` VALUES ('2793', '500102', '涪陵区', '500100');
INSERT INTO `region_info` VALUES ('2794', '500103', '渝中区', '500100');
INSERT INTO `region_info` VALUES ('2795', '500104', '大渡口区', '500100');
INSERT INTO `region_info` VALUES ('2796', '500105', '江北区', '500100');
INSERT INTO `region_info` VALUES ('2797', '500106', '沙坪坝区', '500100');
INSERT INTO `region_info` VALUES ('2798', '500107', '九龙坡区', '500100');
INSERT INTO `region_info` VALUES ('2799', '500108', '南岸区', '500100');
INSERT INTO `region_info` VALUES ('2800', '500109', '北碚区', '500100');
INSERT INTO `region_info` VALUES ('2801', '500110', '万盛区', '500100');
INSERT INTO `region_info` VALUES ('2802', '500111', '双桥区', '500100');
INSERT INTO `region_info` VALUES ('2803', '500112', '渝北区', '500100');
INSERT INTO `region_info` VALUES ('2804', '500113', '巴南区', '500100');
INSERT INTO `region_info` VALUES ('2805', '500114', '黔江区', '500100');
INSERT INTO `region_info` VALUES ('2806', '500115', '长寿区', '500100');
INSERT INTO `region_info` VALUES ('2807', '500222', '綦江县', '500200');
INSERT INTO `region_info` VALUES ('2808', '500223', '潼南县', '500200');
INSERT INTO `region_info` VALUES ('2809', '500224', '铜梁县', '500200');
INSERT INTO `region_info` VALUES ('2810', '500225', '大足县', '500200');
INSERT INTO `region_info` VALUES ('2811', '500226', '荣昌县', '500200');
INSERT INTO `region_info` VALUES ('2812', '500227', '璧山县', '500200');
INSERT INTO `region_info` VALUES ('2813', '500228', '梁平县', '500200');
INSERT INTO `region_info` VALUES ('2814', '500229', '城口县', '500200');
INSERT INTO `region_info` VALUES ('2815', '500230', '丰都县', '500200');
INSERT INTO `region_info` VALUES ('2816', '500231', '垫江县', '500200');
INSERT INTO `region_info` VALUES ('2817', '500232', '武隆县', '500200');
INSERT INTO `region_info` VALUES ('2818', '500233', '忠　县', '500200');
INSERT INTO `region_info` VALUES ('2819', '500234', '开　县', '500200');
INSERT INTO `region_info` VALUES ('2820', '500235', '云阳县', '500200');
INSERT INTO `region_info` VALUES ('2821', '500236', '奉节县', '500200');
INSERT INTO `region_info` VALUES ('2822', '500237', '巫山县', '500200');
INSERT INTO `region_info` VALUES ('2823', '500238', '巫溪县', '500200');
INSERT INTO `region_info` VALUES ('2824', '500240', '石柱土家族自治县', '500200');
INSERT INTO `region_info` VALUES ('2825', '500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `region_info` VALUES ('2826', '500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `region_info` VALUES ('2827', '500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `region_info` VALUES ('2828', '500381', '江津市', '500300');
INSERT INTO `region_info` VALUES ('2829', '500382', '合川市', '500300');
INSERT INTO `region_info` VALUES ('2830', '500383', '永川市', '500300');
INSERT INTO `region_info` VALUES ('2831', '500384', '南川市', '500300');
INSERT INTO `region_info` VALUES ('2832', '510101', '市辖区', '510100');
INSERT INTO `region_info` VALUES ('2833', '510104', '锦江区', '510100');
INSERT INTO `region_info` VALUES ('2834', '510105', '青羊区', '510100');
INSERT INTO `region_info` VALUES ('2835', '510106', '金牛区', '510100');
INSERT INTO `region_info` VALUES ('2836', '510107', '武侯区', '510100');
INSERT INTO `region_info` VALUES ('2837', '510108', '成华区', '510100');
INSERT INTO `region_info` VALUES ('2838', '510112', '龙泉驿区', '510100');
INSERT INTO `region_info` VALUES ('2839', '510113', '青白江区', '510100');
INSERT INTO `region_info` VALUES ('2840', '510114', '新都区', '510100');
INSERT INTO `region_info` VALUES ('2841', '510115', '温江区', '510100');
INSERT INTO `region_info` VALUES ('2842', '510121', '金堂县', '510100');
INSERT INTO `region_info` VALUES ('2843', '510122', '双流县', '510100');
INSERT INTO `region_info` VALUES ('2844', '510124', '郫　县', '510100');
INSERT INTO `region_info` VALUES ('2845', '510129', '大邑县', '510100');
INSERT INTO `region_info` VALUES ('2846', '510131', '蒲江县', '510100');
INSERT INTO `region_info` VALUES ('2847', '510132', '新津县', '510100');
INSERT INTO `region_info` VALUES ('2848', '510181', '都江堰市', '510100');
INSERT INTO `region_info` VALUES ('2849', '510182', '彭州市', '510100');
INSERT INTO `region_info` VALUES ('2850', '510183', '邛崃市', '510100');
INSERT INTO `region_info` VALUES ('2851', '510184', '崇州市', '510100');
INSERT INTO `region_info` VALUES ('2852', '510301', '市辖区', '510300');
INSERT INTO `region_info` VALUES ('2853', '510302', '自流井区', '510300');
INSERT INTO `region_info` VALUES ('2854', '510303', '贡井区', '510300');
INSERT INTO `region_info` VALUES ('2855', '510304', '大安区', '510300');
INSERT INTO `region_info` VALUES ('2856', '510311', '沿滩区', '510300');
INSERT INTO `region_info` VALUES ('2857', '510321', '荣　县', '510300');
INSERT INTO `region_info` VALUES ('2858', '510322', '富顺县', '510300');
INSERT INTO `region_info` VALUES ('2859', '510401', '市辖区', '510400');
INSERT INTO `region_info` VALUES ('2860', '510402', '东　区', '510400');
INSERT INTO `region_info` VALUES ('2861', '510403', '西　区', '510400');
INSERT INTO `region_info` VALUES ('2862', '510411', '仁和区', '510400');
INSERT INTO `region_info` VALUES ('2863', '510421', '米易县', '510400');
INSERT INTO `region_info` VALUES ('2864', '510422', '盐边县', '510400');
INSERT INTO `region_info` VALUES ('2865', '510501', '市辖区', '510500');
INSERT INTO `region_info` VALUES ('2866', '510502', '江阳区', '510500');
INSERT INTO `region_info` VALUES ('2867', '510503', '纳溪区', '510500');
INSERT INTO `region_info` VALUES ('2868', '510504', '龙马潭区', '510500');
INSERT INTO `region_info` VALUES ('2869', '510521', '泸　县', '510500');
INSERT INTO `region_info` VALUES ('2870', '510522', '合江县', '510500');
INSERT INTO `region_info` VALUES ('2871', '510524', '叙永县', '510500');
INSERT INTO `region_info` VALUES ('2872', '510525', '古蔺县', '510500');
INSERT INTO `region_info` VALUES ('2873', '510601', '市辖区', '510600');
INSERT INTO `region_info` VALUES ('2874', '510603', '旌阳区', '510600');
INSERT INTO `region_info` VALUES ('2875', '510623', '中江县', '510600');
INSERT INTO `region_info` VALUES ('2876', '510626', '罗江县', '510600');
INSERT INTO `region_info` VALUES ('2877', '510681', '广汉市', '510600');
INSERT INTO `region_info` VALUES ('2878', '510682', '什邡市', '510600');
INSERT INTO `region_info` VALUES ('2879', '510683', '绵竹市', '510600');
INSERT INTO `region_info` VALUES ('2880', '510701', '市辖区', '510700');
INSERT INTO `region_info` VALUES ('2881', '510703', '涪城区', '510700');
INSERT INTO `region_info` VALUES ('2882', '510704', '游仙区', '510700');
INSERT INTO `region_info` VALUES ('2883', '510722', '三台县', '510700');
INSERT INTO `region_info` VALUES ('2884', '510723', '盐亭县', '510700');
INSERT INTO `region_info` VALUES ('2885', '510724', '安　县', '510700');
INSERT INTO `region_info` VALUES ('2886', '510725', '梓潼县', '510700');
INSERT INTO `region_info` VALUES ('2887', '510726', '北川羌族自治县', '510700');
INSERT INTO `region_info` VALUES ('2888', '510727', '平武县', '510700');
INSERT INTO `region_info` VALUES ('2889', '510781', '江油市', '510700');
INSERT INTO `region_info` VALUES ('2890', '510801', '市辖区', '510800');
INSERT INTO `region_info` VALUES ('2891', '510802', '市中区', '510800');
INSERT INTO `region_info` VALUES ('2892', '510811', '元坝区', '510800');
INSERT INTO `region_info` VALUES ('2893', '510812', '朝天区', '510800');
INSERT INTO `region_info` VALUES ('2894', '510821', '旺苍县', '510800');
INSERT INTO `region_info` VALUES ('2895', '510822', '青川县', '510800');
INSERT INTO `region_info` VALUES ('2896', '510823', '剑阁县', '510800');
INSERT INTO `region_info` VALUES ('2897', '510824', '苍溪县', '510800');
INSERT INTO `region_info` VALUES ('2898', '510901', '市辖区', '510900');
INSERT INTO `region_info` VALUES ('2899', '510903', '船山区', '510900');
INSERT INTO `region_info` VALUES ('2900', '510904', '安居区', '510900');
INSERT INTO `region_info` VALUES ('2901', '510921', '蓬溪县', '510900');
INSERT INTO `region_info` VALUES ('2902', '510922', '射洪县', '510900');
INSERT INTO `region_info` VALUES ('2903', '510923', '大英县', '510900');
INSERT INTO `region_info` VALUES ('2904', '511001', '市辖区', '511000');
INSERT INTO `region_info` VALUES ('2905', '511002', '市中区', '511000');
INSERT INTO `region_info` VALUES ('2906', '511011', '东兴区', '511000');
INSERT INTO `region_info` VALUES ('2907', '511024', '威远县', '511000');
INSERT INTO `region_info` VALUES ('2908', '511025', '资中县', '511000');
INSERT INTO `region_info` VALUES ('2909', '511028', '隆昌县', '511000');
INSERT INTO `region_info` VALUES ('2910', '511101', '市辖区', '511100');
INSERT INTO `region_info` VALUES ('2911', '511102', '市中区', '511100');
INSERT INTO `region_info` VALUES ('2912', '511111', '沙湾区', '511100');
INSERT INTO `region_info` VALUES ('2913', '511112', '五通桥区', '511100');
INSERT INTO `region_info` VALUES ('2914', '511113', '金口河区', '511100');
INSERT INTO `region_info` VALUES ('2915', '511123', '犍为县', '511100');
INSERT INTO `region_info` VALUES ('2916', '511124', '井研县', '511100');
INSERT INTO `region_info` VALUES ('2917', '511126', '夹江县', '511100');
INSERT INTO `region_info` VALUES ('2918', '511129', '沐川县', '511100');
INSERT INTO `region_info` VALUES ('2919', '511132', '峨边彝族自治县', '511100');
INSERT INTO `region_info` VALUES ('2920', '511133', '马边彝族自治县', '511100');
INSERT INTO `region_info` VALUES ('2921', '511181', '峨眉山市', '511100');
INSERT INTO `region_info` VALUES ('2922', '511301', '市辖区', '511300');
INSERT INTO `region_info` VALUES ('2923', '511302', '顺庆区', '511300');
INSERT INTO `region_info` VALUES ('2924', '511303', '高坪区', '511300');
INSERT INTO `region_info` VALUES ('2925', '511304', '嘉陵区', '511300');
INSERT INTO `region_info` VALUES ('2926', '511321', '南部县', '511300');
INSERT INTO `region_info` VALUES ('2927', '511322', '营山县', '511300');
INSERT INTO `region_info` VALUES ('2928', '511323', '蓬安县', '511300');
INSERT INTO `region_info` VALUES ('2929', '511324', '仪陇县', '511300');
INSERT INTO `region_info` VALUES ('2930', '511325', '西充县', '511300');
INSERT INTO `region_info` VALUES ('2931', '511381', '阆中市', '511300');
INSERT INTO `region_info` VALUES ('2932', '511401', '市辖区', '511400');
INSERT INTO `region_info` VALUES ('2933', '511402', '东坡区', '511400');
INSERT INTO `region_info` VALUES ('2934', '511421', '仁寿县', '511400');
INSERT INTO `region_info` VALUES ('2935', '511422', '彭山县', '511400');
INSERT INTO `region_info` VALUES ('2936', '511423', '洪雅县', '511400');
INSERT INTO `region_info` VALUES ('2937', '511424', '丹棱县', '511400');
INSERT INTO `region_info` VALUES ('2938', '511425', '青神县', '511400');
INSERT INTO `region_info` VALUES ('2939', '511501', '市辖区', '511500');
INSERT INTO `region_info` VALUES ('2940', '511502', '翠屏区', '511500');
INSERT INTO `region_info` VALUES ('2941', '511521', '宜宾县', '511500');
INSERT INTO `region_info` VALUES ('2942', '511522', '南溪县', '511500');
INSERT INTO `region_info` VALUES ('2943', '511523', '江安县', '511500');
INSERT INTO `region_info` VALUES ('2944', '511524', '长宁县', '511500');
INSERT INTO `region_info` VALUES ('2945', '511525', '高　县', '511500');
INSERT INTO `region_info` VALUES ('2946', '511526', '珙　县', '511500');
INSERT INTO `region_info` VALUES ('2947', '511527', '筠连县', '511500');
INSERT INTO `region_info` VALUES ('2948', '511528', '兴文县', '511500');
INSERT INTO `region_info` VALUES ('2949', '511529', '屏山县', '511500');
INSERT INTO `region_info` VALUES ('2950', '511601', '市辖区', '511600');
INSERT INTO `region_info` VALUES ('2951', '511602', '广安区', '511600');
INSERT INTO `region_info` VALUES ('2952', '511621', '岳池县', '511600');
INSERT INTO `region_info` VALUES ('2953', '511622', '武胜县', '511600');
INSERT INTO `region_info` VALUES ('2954', '511623', '邻水县', '511600');
INSERT INTO `region_info` VALUES ('2955', '511681', '华莹市', '511600');
INSERT INTO `region_info` VALUES ('2956', '511701', '市辖区', '511700');
INSERT INTO `region_info` VALUES ('2957', '511702', '通川区', '511700');
INSERT INTO `region_info` VALUES ('2958', '511721', '达　县', '511700');
INSERT INTO `region_info` VALUES ('2959', '511722', '宣汉县', '511700');
INSERT INTO `region_info` VALUES ('2960', '511723', '开江县', '511700');
INSERT INTO `region_info` VALUES ('2961', '511724', '大竹县', '511700');
INSERT INTO `region_info` VALUES ('2962', '511725', '渠　县', '511700');
INSERT INTO `region_info` VALUES ('2963', '511781', '万源市', '511700');
INSERT INTO `region_info` VALUES ('2964', '511801', '市辖区', '511800');
INSERT INTO `region_info` VALUES ('2965', '511802', '雨城区', '511800');
INSERT INTO `region_info` VALUES ('2966', '511821', '名山县', '511800');
INSERT INTO `region_info` VALUES ('2967', '511822', '荥经县', '511800');
INSERT INTO `region_info` VALUES ('2968', '511823', '汉源县', '511800');
INSERT INTO `region_info` VALUES ('2969', '511824', '石棉县', '511800');
INSERT INTO `region_info` VALUES ('2970', '511825', '天全县', '511800');
INSERT INTO `region_info` VALUES ('2971', '511826', '芦山县', '511800');
INSERT INTO `region_info` VALUES ('2972', '511827', '宝兴县', '511800');
INSERT INTO `region_info` VALUES ('2973', '511901', '市辖区', '511900');
INSERT INTO `region_info` VALUES ('2974', '511902', '巴州区', '511900');
INSERT INTO `region_info` VALUES ('2975', '511921', '通江县', '511900');
INSERT INTO `region_info` VALUES ('2976', '511922', '南江县', '511900');
INSERT INTO `region_info` VALUES ('2977', '511923', '平昌县', '511900');
INSERT INTO `region_info` VALUES ('2978', '512001', '市辖区', '512000');
INSERT INTO `region_info` VALUES ('2979', '512002', '雁江区', '512000');
INSERT INTO `region_info` VALUES ('2980', '512021', '安岳县', '512000');
INSERT INTO `region_info` VALUES ('2981', '512022', '乐至县', '512000');
INSERT INTO `region_info` VALUES ('2982', '512081', '简阳市', '512000');
INSERT INTO `region_info` VALUES ('2983', '513221', '汶川县', '513200');
INSERT INTO `region_info` VALUES ('2984', '513222', '理　县', '513200');
INSERT INTO `region_info` VALUES ('2985', '513223', '茂　县', '513200');
INSERT INTO `region_info` VALUES ('2986', '513224', '松潘县', '513200');
INSERT INTO `region_info` VALUES ('2987', '513225', '九寨沟县', '513200');
INSERT INTO `region_info` VALUES ('2988', '513226', '金川县', '513200');
INSERT INTO `region_info` VALUES ('2989', '513227', '小金县', '513200');
INSERT INTO `region_info` VALUES ('2990', '513228', '黑水县', '513200');
INSERT INTO `region_info` VALUES ('2991', '513229', '马尔康县', '513200');
INSERT INTO `region_info` VALUES ('2992', '513230', '壤塘县', '513200');
INSERT INTO `region_info` VALUES ('2993', '513231', '阿坝县', '513200');
INSERT INTO `region_info` VALUES ('2994', '513232', '若尔盖县', '513200');
INSERT INTO `region_info` VALUES ('2995', '513233', '红原县', '513200');
INSERT INTO `region_info` VALUES ('2996', '513321', '康定县', '513300');
INSERT INTO `region_info` VALUES ('2997', '513322', '泸定县', '513300');
INSERT INTO `region_info` VALUES ('2998', '513323', '丹巴县', '513300');
INSERT INTO `region_info` VALUES ('2999', '513324', '九龙县', '513300');
INSERT INTO `region_info` VALUES ('3000', '513325', '雅江县', '513300');
INSERT INTO `region_info` VALUES ('3001', '513326', '道孚县', '513300');
INSERT INTO `region_info` VALUES ('3002', '513327', '炉霍县', '513300');
INSERT INTO `region_info` VALUES ('3003', '513328', '甘孜县', '513300');
INSERT INTO `region_info` VALUES ('3004', '513329', '新龙县', '513300');
INSERT INTO `region_info` VALUES ('3005', '513330', '德格县', '513300');
INSERT INTO `region_info` VALUES ('3006', '513331', '白玉县', '513300');
INSERT INTO `region_info` VALUES ('3007', '513332', '石渠县', '513300');
INSERT INTO `region_info` VALUES ('3008', '513333', '色达县', '513300');
INSERT INTO `region_info` VALUES ('3009', '513334', '理塘县', '513300');
INSERT INTO `region_info` VALUES ('3010', '513335', '巴塘县', '513300');
INSERT INTO `region_info` VALUES ('3011', '513336', '乡城县', '513300');
INSERT INTO `region_info` VALUES ('3012', '513337', '稻城县', '513300');
INSERT INTO `region_info` VALUES ('3013', '513338', '得荣县', '513300');
INSERT INTO `region_info` VALUES ('3014', '513401', '西昌市', '513400');
INSERT INTO `region_info` VALUES ('3015', '513422', '木里藏族自治县', '513400');
INSERT INTO `region_info` VALUES ('3016', '513423', '盐源县', '513400');
INSERT INTO `region_info` VALUES ('3017', '513424', '德昌县', '513400');
INSERT INTO `region_info` VALUES ('3018', '513425', '会理县', '513400');
INSERT INTO `region_info` VALUES ('3019', '513426', '会东县', '513400');
INSERT INTO `region_info` VALUES ('3020', '513427', '宁南县', '513400');
INSERT INTO `region_info` VALUES ('3021', '513428', '普格县', '513400');
INSERT INTO `region_info` VALUES ('3022', '513429', '布拖县', '513400');
INSERT INTO `region_info` VALUES ('3023', '513430', '金阳县', '513400');
INSERT INTO `region_info` VALUES ('3024', '513431', '昭觉县', '513400');
INSERT INTO `region_info` VALUES ('3025', '513432', '喜德县', '513400');
INSERT INTO `region_info` VALUES ('3026', '513433', '冕宁县', '513400');
INSERT INTO `region_info` VALUES ('3027', '513434', '越西县', '513400');
INSERT INTO `region_info` VALUES ('3028', '513435', '甘洛县', '513400');
INSERT INTO `region_info` VALUES ('3029', '513436', '美姑县', '513400');
INSERT INTO `region_info` VALUES ('3030', '513437', '雷波县', '513400');
INSERT INTO `region_info` VALUES ('3031', '520101', '市辖区', '520100');
INSERT INTO `region_info` VALUES ('3032', '520102', '南明区', '520100');
INSERT INTO `region_info` VALUES ('3033', '520103', '云岩区', '520100');
INSERT INTO `region_info` VALUES ('3034', '520111', '花溪区', '520100');
INSERT INTO `region_info` VALUES ('3035', '520112', '乌当区', '520100');
INSERT INTO `region_info` VALUES ('3036', '520113', '白云区', '520100');
INSERT INTO `region_info` VALUES ('3037', '520114', '小河区', '520100');
INSERT INTO `region_info` VALUES ('3038', '520121', '开阳县', '520100');
INSERT INTO `region_info` VALUES ('3039', '520122', '息烽县', '520100');
INSERT INTO `region_info` VALUES ('3040', '520123', '修文县', '520100');
INSERT INTO `region_info` VALUES ('3041', '520181', '清镇市', '520100');
INSERT INTO `region_info` VALUES ('3042', '520201', '钟山区', '520200');
INSERT INTO `region_info` VALUES ('3043', '520203', '六枝特区', '520200');
INSERT INTO `region_info` VALUES ('3044', '520221', '水城县', '520200');
INSERT INTO `region_info` VALUES ('3045', '520222', '盘　县', '520200');
INSERT INTO `region_info` VALUES ('3046', '520301', '市辖区', '520300');
INSERT INTO `region_info` VALUES ('3047', '520302', '红花岗区', '520300');
INSERT INTO `region_info` VALUES ('3048', '520303', '汇川区', '520300');
INSERT INTO `region_info` VALUES ('3049', '520321', '遵义县', '520300');
INSERT INTO `region_info` VALUES ('3050', '520322', '桐梓县', '520300');
INSERT INTO `region_info` VALUES ('3051', '520323', '绥阳县', '520300');
INSERT INTO `region_info` VALUES ('3052', '520324', '正安县', '520300');
INSERT INTO `region_info` VALUES ('3053', '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `region_info` VALUES ('3054', '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `region_info` VALUES ('3055', '520327', '凤冈县', '520300');
INSERT INTO `region_info` VALUES ('3056', '520328', '湄潭县', '520300');
INSERT INTO `region_info` VALUES ('3057', '520329', '余庆县', '520300');
INSERT INTO `region_info` VALUES ('3058', '520330', '习水县', '520300');
INSERT INTO `region_info` VALUES ('3059', '520381', '赤水市', '520300');
INSERT INTO `region_info` VALUES ('3060', '520382', '仁怀市', '520300');
INSERT INTO `region_info` VALUES ('3061', '520401', '市辖区', '520400');
INSERT INTO `region_info` VALUES ('3062', '520402', '西秀区', '520400');
INSERT INTO `region_info` VALUES ('3063', '520421', '平坝县', '520400');
INSERT INTO `region_info` VALUES ('3064', '520422', '普定县', '520400');
INSERT INTO `region_info` VALUES ('3065', '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `region_info` VALUES ('3066', '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `region_info` VALUES ('3067', '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `region_info` VALUES ('3068', '522201', '铜仁市', '522200');
INSERT INTO `region_info` VALUES ('3069', '522222', '江口县', '522200');
INSERT INTO `region_info` VALUES ('3070', '522223', '玉屏侗族自治县', '522200');
INSERT INTO `region_info` VALUES ('3071', '522224', '石阡县', '522200');
INSERT INTO `region_info` VALUES ('3072', '522225', '思南县', '522200');
INSERT INTO `region_info` VALUES ('3073', '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `region_info` VALUES ('3074', '522227', '德江县', '522200');
INSERT INTO `region_info` VALUES ('3075', '522228', '沿河土家族自治县', '522200');
INSERT INTO `region_info` VALUES ('3076', '522229', '松桃苗族自治县', '522200');
INSERT INTO `region_info` VALUES ('3077', '522230', '万山特区', '522200');
INSERT INTO `region_info` VALUES ('3078', '522301', '兴义市', '522300');
INSERT INTO `region_info` VALUES ('3079', '522322', '兴仁县', '522300');
INSERT INTO `region_info` VALUES ('3080', '522323', '普安县', '522300');
INSERT INTO `region_info` VALUES ('3081', '522324', '晴隆县', '522300');
INSERT INTO `region_info` VALUES ('3082', '522325', '贞丰县', '522300');
INSERT INTO `region_info` VALUES ('3083', '522326', '望谟县', '522300');
INSERT INTO `region_info` VALUES ('3084', '522327', '册亨县', '522300');
INSERT INTO `region_info` VALUES ('3085', '522328', '安龙县', '522300');
INSERT INTO `region_info` VALUES ('3086', '522401', '毕节市', '522400');
INSERT INTO `region_info` VALUES ('3087', '522422', '大方县', '522400');
INSERT INTO `region_info` VALUES ('3088', '522423', '黔西县', '522400');
INSERT INTO `region_info` VALUES ('3089', '522424', '金沙县', '522400');
INSERT INTO `region_info` VALUES ('3090', '522425', '织金县', '522400');
INSERT INTO `region_info` VALUES ('3091', '522426', '纳雍县', '522400');
INSERT INTO `region_info` VALUES ('3092', '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `region_info` VALUES ('3093', '522428', '赫章县', '522400');
INSERT INTO `region_info` VALUES ('3094', '522601', '凯里市', '522600');
INSERT INTO `region_info` VALUES ('3095', '522622', '黄平县', '522600');
INSERT INTO `region_info` VALUES ('3096', '522623', '施秉县', '522600');
INSERT INTO `region_info` VALUES ('3097', '522624', '三穗县', '522600');
INSERT INTO `region_info` VALUES ('3098', '522625', '镇远县', '522600');
INSERT INTO `region_info` VALUES ('3099', '522626', '岑巩县', '522600');
INSERT INTO `region_info` VALUES ('3100', '522627', '天柱县', '522600');
INSERT INTO `region_info` VALUES ('3101', '522628', '锦屏县', '522600');
INSERT INTO `region_info` VALUES ('3102', '522629', '剑河县', '522600');
INSERT INTO `region_info` VALUES ('3103', '522630', '台江县', '522600');
INSERT INTO `region_info` VALUES ('3104', '522631', '黎平县', '522600');
INSERT INTO `region_info` VALUES ('3105', '522632', '榕江县', '522600');
INSERT INTO `region_info` VALUES ('3106', '522633', '从江县', '522600');
INSERT INTO `region_info` VALUES ('3107', '522634', '雷山县', '522600');
INSERT INTO `region_info` VALUES ('3108', '522635', '麻江县', '522600');
INSERT INTO `region_info` VALUES ('3109', '522636', '丹寨县', '522600');
INSERT INTO `region_info` VALUES ('3110', '522701', '都匀市', '522700');
INSERT INTO `region_info` VALUES ('3111', '522702', '福泉市', '522700');
INSERT INTO `region_info` VALUES ('3112', '522722', '荔波县', '522700');
INSERT INTO `region_info` VALUES ('3113', '522723', '贵定县', '522700');
INSERT INTO `region_info` VALUES ('3114', '522725', '瓮安县', '522700');
INSERT INTO `region_info` VALUES ('3115', '522726', '独山县', '522700');
INSERT INTO `region_info` VALUES ('3116', '522727', '平塘县', '522700');
INSERT INTO `region_info` VALUES ('3117', '522728', '罗甸县', '522700');
INSERT INTO `region_info` VALUES ('3118', '522729', '长顺县', '522700');
INSERT INTO `region_info` VALUES ('3119', '522730', '龙里县', '522700');
INSERT INTO `region_info` VALUES ('3120', '522731', '惠水县', '522700');
INSERT INTO `region_info` VALUES ('3121', '522732', '三都水族自治县', '522700');
INSERT INTO `region_info` VALUES ('3122', '530101', '市辖区', '530100');
INSERT INTO `region_info` VALUES ('3123', '530102', '五华区', '530100');
INSERT INTO `region_info` VALUES ('3124', '530103', '盘龙区', '530100');
INSERT INTO `region_info` VALUES ('3125', '530111', '官渡区', '530100');
INSERT INTO `region_info` VALUES ('3126', '530112', '西山区', '530100');
INSERT INTO `region_info` VALUES ('3127', '530113', '东川区', '530100');
INSERT INTO `region_info` VALUES ('3128', '530121', '呈贡县', '530100');
INSERT INTO `region_info` VALUES ('3129', '530122', '晋宁县', '530100');
INSERT INTO `region_info` VALUES ('3130', '530124', '富民县', '530100');
INSERT INTO `region_info` VALUES ('3131', '530125', '宜良县', '530100');
INSERT INTO `region_info` VALUES ('3132', '530126', '石林彝族自治县', '530100');
INSERT INTO `region_info` VALUES ('3133', '530127', '嵩明县', '530100');
INSERT INTO `region_info` VALUES ('3134', '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `region_info` VALUES ('3135', '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `region_info` VALUES ('3136', '530181', '安宁市', '530100');
INSERT INTO `region_info` VALUES ('3137', '530301', '市辖区', '530300');
INSERT INTO `region_info` VALUES ('3138', '530302', '麒麟区', '530300');
INSERT INTO `region_info` VALUES ('3139', '530321', '马龙县', '530300');
INSERT INTO `region_info` VALUES ('3140', '530322', '陆良县', '530300');
INSERT INTO `region_info` VALUES ('3141', '530323', '师宗县', '530300');
INSERT INTO `region_info` VALUES ('3142', '530324', '罗平县', '530300');
INSERT INTO `region_info` VALUES ('3143', '530325', '富源县', '530300');
INSERT INTO `region_info` VALUES ('3144', '530326', '会泽县', '530300');
INSERT INTO `region_info` VALUES ('3145', '530328', '沾益县', '530300');
INSERT INTO `region_info` VALUES ('3146', '530381', '宣威市', '530300');
INSERT INTO `region_info` VALUES ('3147', '530401', '市辖区', '530400');
INSERT INTO `region_info` VALUES ('3148', '530402', '红塔区', '530400');
INSERT INTO `region_info` VALUES ('3149', '530421', '江川县', '530400');
INSERT INTO `region_info` VALUES ('3150', '530422', '澄江县', '530400');
INSERT INTO `region_info` VALUES ('3151', '530423', '通海县', '530400');
INSERT INTO `region_info` VALUES ('3152', '530424', '华宁县', '530400');
INSERT INTO `region_info` VALUES ('3153', '530425', '易门县', '530400');
INSERT INTO `region_info` VALUES ('3154', '530426', '峨山彝族自治县', '530400');
INSERT INTO `region_info` VALUES ('3155', '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `region_info` VALUES ('3156', '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `region_info` VALUES ('3157', '530501', '市辖区', '530500');
INSERT INTO `region_info` VALUES ('3158', '530502', '隆阳区', '530500');
INSERT INTO `region_info` VALUES ('3159', '530521', '施甸县', '530500');
INSERT INTO `region_info` VALUES ('3160', '530522', '腾冲县', '530500');
INSERT INTO `region_info` VALUES ('3161', '530523', '龙陵县', '530500');
INSERT INTO `region_info` VALUES ('3162', '530524', '昌宁县', '530500');
INSERT INTO `region_info` VALUES ('3163', '530601', '市辖区', '530600');
INSERT INTO `region_info` VALUES ('3164', '530602', '昭阳区', '530600');
INSERT INTO `region_info` VALUES ('3165', '530621', '鲁甸县', '530600');
INSERT INTO `region_info` VALUES ('3166', '530622', '巧家县', '530600');
INSERT INTO `region_info` VALUES ('3167', '530623', '盐津县', '530600');
INSERT INTO `region_info` VALUES ('3168', '530624', '大关县', '530600');
INSERT INTO `region_info` VALUES ('3169', '530625', '永善县', '530600');
INSERT INTO `region_info` VALUES ('3170', '530626', '绥江县', '530600');
INSERT INTO `region_info` VALUES ('3171', '530627', '镇雄县', '530600');
INSERT INTO `region_info` VALUES ('3172', '530628', '彝良县', '530600');
INSERT INTO `region_info` VALUES ('3173', '530629', '威信县', '530600');
INSERT INTO `region_info` VALUES ('3174', '530630', '水富县', '530600');
INSERT INTO `region_info` VALUES ('3175', '530701', '市辖区', '530700');
INSERT INTO `region_info` VALUES ('3176', '530702', '古城区', '530700');
INSERT INTO `region_info` VALUES ('3177', '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `region_info` VALUES ('3178', '530722', '永胜县', '530700');
INSERT INTO `region_info` VALUES ('3179', '530723', '华坪县', '530700');
INSERT INTO `region_info` VALUES ('3180', '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `region_info` VALUES ('3181', '530801', '市辖区', '530800');
INSERT INTO `region_info` VALUES ('3182', '530802', '翠云区', '530800');
INSERT INTO `region_info` VALUES ('3183', '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `region_info` VALUES ('3184', '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `region_info` VALUES ('3185', '530823', '景东彝族自治县', '530800');
INSERT INTO `region_info` VALUES ('3186', '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `region_info` VALUES ('3187', '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `region_info` VALUES ('3188', '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `region_info` VALUES ('3189', '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `region_info` VALUES ('3190', '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `region_info` VALUES ('3191', '530829', '西盟佤族自治县', '530800');
INSERT INTO `region_info` VALUES ('3192', '530901', '市辖区', '530900');
INSERT INTO `region_info` VALUES ('3193', '530902', '临翔区', '530900');
INSERT INTO `region_info` VALUES ('3194', '530921', '凤庆县', '530900');
INSERT INTO `region_info` VALUES ('3195', '530922', '云　县', '530900');
INSERT INTO `region_info` VALUES ('3196', '530923', '永德县', '530900');
INSERT INTO `region_info` VALUES ('3197', '530924', '镇康县', '530900');
INSERT INTO `region_info` VALUES ('3198', '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `region_info` VALUES ('3199', '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `region_info` VALUES ('3200', '530927', '沧源佤族自治县', '530900');
INSERT INTO `region_info` VALUES ('3201', '532301', '楚雄市', '532300');
INSERT INTO `region_info` VALUES ('3202', '532322', '双柏县', '532300');
INSERT INTO `region_info` VALUES ('3203', '532323', '牟定县', '532300');
INSERT INTO `region_info` VALUES ('3204', '532324', '南华县', '532300');
INSERT INTO `region_info` VALUES ('3205', '532325', '姚安县', '532300');
INSERT INTO `region_info` VALUES ('3206', '532326', '大姚县', '532300');
INSERT INTO `region_info` VALUES ('3207', '532327', '永仁县', '532300');
INSERT INTO `region_info` VALUES ('3208', '532328', '元谋县', '532300');
INSERT INTO `region_info` VALUES ('3209', '532329', '武定县', '532300');
INSERT INTO `region_info` VALUES ('3210', '532331', '禄丰县', '532300');
INSERT INTO `region_info` VALUES ('3211', '532501', '个旧市', '532500');
INSERT INTO `region_info` VALUES ('3212', '532502', '开远市', '532500');
INSERT INTO `region_info` VALUES ('3213', '532522', '蒙自县', '532500');
INSERT INTO `region_info` VALUES ('3214', '532523', '屏边苗族自治县', '532500');
INSERT INTO `region_info` VALUES ('3215', '532524', '建水县', '532500');
INSERT INTO `region_info` VALUES ('3216', '532525', '石屏县', '532500');
INSERT INTO `region_info` VALUES ('3217', '532526', '弥勒县', '532500');
INSERT INTO `region_info` VALUES ('3218', '532527', '泸西县', '532500');
INSERT INTO `region_info` VALUES ('3219', '532528', '元阳县', '532500');
INSERT INTO `region_info` VALUES ('3220', '532529', '红河县', '532500');
INSERT INTO `region_info` VALUES ('3221', '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `region_info` VALUES ('3222', '532531', '绿春县', '532500');
INSERT INTO `region_info` VALUES ('3223', '532532', '河口瑶族自治县', '532500');
INSERT INTO `region_info` VALUES ('3224', '532621', '文山县', '532600');
INSERT INTO `region_info` VALUES ('3225', '532622', '砚山县', '532600');
INSERT INTO `region_info` VALUES ('3226', '532623', '西畴县', '532600');
INSERT INTO `region_info` VALUES ('3227', '532624', '麻栗坡县', '532600');
INSERT INTO `region_info` VALUES ('3228', '532625', '马关县', '532600');
INSERT INTO `region_info` VALUES ('3229', '532626', '丘北县', '532600');
INSERT INTO `region_info` VALUES ('3230', '532627', '广南县', '532600');
INSERT INTO `region_info` VALUES ('3231', '532628', '富宁县', '532600');
INSERT INTO `region_info` VALUES ('3232', '532801', '景洪市', '532800');
INSERT INTO `region_info` VALUES ('3233', '532822', '勐海县', '532800');
INSERT INTO `region_info` VALUES ('3234', '532823', '勐腊县', '532800');
INSERT INTO `region_info` VALUES ('3235', '532901', '大理市', '532900');
INSERT INTO `region_info` VALUES ('3236', '532922', '漾濞彝族自治县', '532900');
INSERT INTO `region_info` VALUES ('3237', '532923', '祥云县', '532900');
INSERT INTO `region_info` VALUES ('3238', '532924', '宾川县', '532900');
INSERT INTO `region_info` VALUES ('3239', '532925', '弥渡县', '532900');
INSERT INTO `region_info` VALUES ('3240', '532926', '南涧彝族自治县', '532900');
INSERT INTO `region_info` VALUES ('3241', '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `region_info` VALUES ('3242', '532928', '永平县', '532900');
INSERT INTO `region_info` VALUES ('3243', '532929', '云龙县', '532900');
INSERT INTO `region_info` VALUES ('3244', '532930', '洱源县', '532900');
INSERT INTO `region_info` VALUES ('3245', '532931', '剑川县', '532900');
INSERT INTO `region_info` VALUES ('3246', '532932', '鹤庆县', '532900');
INSERT INTO `region_info` VALUES ('3247', '533102', '瑞丽市', '533100');
INSERT INTO `region_info` VALUES ('3248', '533103', '潞西市', '533100');
INSERT INTO `region_info` VALUES ('3249', '533122', '梁河县', '533100');
INSERT INTO `region_info` VALUES ('3250', '533123', '盈江县', '533100');
INSERT INTO `region_info` VALUES ('3251', '533124', '陇川县', '533100');
INSERT INTO `region_info` VALUES ('3252', '533321', '泸水县', '533300');
INSERT INTO `region_info` VALUES ('3253', '533323', '福贡县', '533300');
INSERT INTO `region_info` VALUES ('3254', '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `region_info` VALUES ('3255', '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `region_info` VALUES ('3256', '533421', '香格里拉县', '533400');
INSERT INTO `region_info` VALUES ('3257', '533422', '德钦县', '533400');
INSERT INTO `region_info` VALUES ('3258', '533423', '维西傈僳族自治县', '533400');
INSERT INTO `region_info` VALUES ('3259', '540101', '市辖区', '540100');
INSERT INTO `region_info` VALUES ('3260', '540102', '城关区', '540100');
INSERT INTO `region_info` VALUES ('3261', '540121', '林周县', '540100');
INSERT INTO `region_info` VALUES ('3262', '540122', '当雄县', '540100');
INSERT INTO `region_info` VALUES ('3263', '540123', '尼木县', '540100');
INSERT INTO `region_info` VALUES ('3264', '540124', '曲水县', '540100');
INSERT INTO `region_info` VALUES ('3265', '540125', '堆龙德庆县', '540100');
INSERT INTO `region_info` VALUES ('3266', '540126', '达孜县', '540100');
INSERT INTO `region_info` VALUES ('3267', '540127', '墨竹工卡县', '540100');
INSERT INTO `region_info` VALUES ('3268', '542121', '昌都县', '542100');
INSERT INTO `region_info` VALUES ('3269', '542122', '江达县', '542100');
INSERT INTO `region_info` VALUES ('3270', '542123', '贡觉县', '542100');
INSERT INTO `region_info` VALUES ('3271', '542124', '类乌齐县', '542100');
INSERT INTO `region_info` VALUES ('3272', '542125', '丁青县', '542100');
INSERT INTO `region_info` VALUES ('3273', '542126', '察雅县', '542100');
INSERT INTO `region_info` VALUES ('3274', '542127', '八宿县', '542100');
INSERT INTO `region_info` VALUES ('3275', '542128', '左贡县', '542100');
INSERT INTO `region_info` VALUES ('3276', '542129', '芒康县', '542100');
INSERT INTO `region_info` VALUES ('3277', '542132', '洛隆县', '542100');
INSERT INTO `region_info` VALUES ('3278', '542133', '边坝县', '542100');
INSERT INTO `region_info` VALUES ('3279', '542221', '乃东县', '542200');
INSERT INTO `region_info` VALUES ('3280', '542222', '扎囊县', '542200');
INSERT INTO `region_info` VALUES ('3281', '542223', '贡嘎县', '542200');
INSERT INTO `region_info` VALUES ('3282', '542224', '桑日县', '542200');
INSERT INTO `region_info` VALUES ('3283', '542225', '琼结县', '542200');
INSERT INTO `region_info` VALUES ('3284', '542226', '曲松县', '542200');
INSERT INTO `region_info` VALUES ('3285', '542227', '措美县', '542200');
INSERT INTO `region_info` VALUES ('3286', '542228', '洛扎县', '542200');
INSERT INTO `region_info` VALUES ('3287', '542229', '加查县', '542200');
INSERT INTO `region_info` VALUES ('3288', '542231', '隆子县', '542200');
INSERT INTO `region_info` VALUES ('3289', '542232', '错那县', '542200');
INSERT INTO `region_info` VALUES ('3290', '542233', '浪卡子县', '542200');
INSERT INTO `region_info` VALUES ('3291', '542301', '日喀则市', '542300');
INSERT INTO `region_info` VALUES ('3292', '542322', '南木林县', '542300');
INSERT INTO `region_info` VALUES ('3293', '542323', '江孜县', '542300');
INSERT INTO `region_info` VALUES ('3294', '542324', '定日县', '542300');
INSERT INTO `region_info` VALUES ('3295', '542325', '萨迦县', '542300');
INSERT INTO `region_info` VALUES ('3296', '542326', '拉孜县', '542300');
INSERT INTO `region_info` VALUES ('3297', '542327', '昂仁县', '542300');
INSERT INTO `region_info` VALUES ('3298', '542328', '谢通门县', '542300');
INSERT INTO `region_info` VALUES ('3299', '542329', '白朗县', '542300');
INSERT INTO `region_info` VALUES ('3300', '542330', '仁布县', '542300');
INSERT INTO `region_info` VALUES ('3301', '542331', '康马县', '542300');
INSERT INTO `region_info` VALUES ('3302', '542332', '定结县', '542300');
INSERT INTO `region_info` VALUES ('3303', '542333', '仲巴县', '542300');
INSERT INTO `region_info` VALUES ('3304', '542334', '亚东县', '542300');
INSERT INTO `region_info` VALUES ('3305', '542335', '吉隆县', '542300');
INSERT INTO `region_info` VALUES ('3306', '542336', '聂拉木县', '542300');
INSERT INTO `region_info` VALUES ('3307', '542337', '萨嘎县', '542300');
INSERT INTO `region_info` VALUES ('3308', '542338', '岗巴县', '542300');
INSERT INTO `region_info` VALUES ('3309', '542421', '那曲县', '542400');
INSERT INTO `region_info` VALUES ('3310', '542422', '嘉黎县', '542400');
INSERT INTO `region_info` VALUES ('3311', '542423', '比如县', '542400');
INSERT INTO `region_info` VALUES ('3312', '542424', '聂荣县', '542400');
INSERT INTO `region_info` VALUES ('3313', '542425', '安多县', '542400');
INSERT INTO `region_info` VALUES ('3314', '542426', '申扎县', '542400');
INSERT INTO `region_info` VALUES ('3315', '542427', '索　县', '542400');
INSERT INTO `region_info` VALUES ('3316', '542428', '班戈县', '542400');
INSERT INTO `region_info` VALUES ('3317', '542429', '巴青县', '542400');
INSERT INTO `region_info` VALUES ('3318', '542430', '尼玛县', '542400');
INSERT INTO `region_info` VALUES ('3319', '542521', '普兰县', '542500');
INSERT INTO `region_info` VALUES ('3320', '542522', '札达县', '542500');
INSERT INTO `region_info` VALUES ('3321', '542523', '噶尔县', '542500');
INSERT INTO `region_info` VALUES ('3322', '542524', '日土县', '542500');
INSERT INTO `region_info` VALUES ('3323', '542525', '革吉县', '542500');
INSERT INTO `region_info` VALUES ('3324', '542526', '改则县', '542500');
INSERT INTO `region_info` VALUES ('3325', '542527', '措勤县', '542500');
INSERT INTO `region_info` VALUES ('3326', '542621', '林芝县', '542600');
INSERT INTO `region_info` VALUES ('3327', '542622', '工布江达县', '542600');
INSERT INTO `region_info` VALUES ('3328', '542623', '米林县', '542600');
INSERT INTO `region_info` VALUES ('3329', '542624', '墨脱县', '542600');
INSERT INTO `region_info` VALUES ('3330', '542625', '波密县', '542600');
INSERT INTO `region_info` VALUES ('3331', '542626', '察隅县', '542600');
INSERT INTO `region_info` VALUES ('3332', '542627', '朗　县', '542600');
INSERT INTO `region_info` VALUES ('3333', '610101', '市辖区', '610100');
INSERT INTO `region_info` VALUES ('3334', '610102', '新城区', '610100');
INSERT INTO `region_info` VALUES ('3335', '610103', '碑林区', '610100');
INSERT INTO `region_info` VALUES ('3336', '610104', '莲湖区', '610100');
INSERT INTO `region_info` VALUES ('3337', '610111', '灞桥区', '610100');
INSERT INTO `region_info` VALUES ('3338', '610112', '未央区', '610100');
INSERT INTO `region_info` VALUES ('3339', '610113', '雁塔区', '610100');
INSERT INTO `region_info` VALUES ('3340', '610114', '阎良区', '610100');
INSERT INTO `region_info` VALUES ('3341', '610115', '临潼区', '610100');
INSERT INTO `region_info` VALUES ('3342', '610116', '长安区', '610100');
INSERT INTO `region_info` VALUES ('3343', '610122', '蓝田县', '610100');
INSERT INTO `region_info` VALUES ('3344', '610124', '周至县', '610100');
INSERT INTO `region_info` VALUES ('3345', '610125', '户　县', '610100');
INSERT INTO `region_info` VALUES ('3346', '610126', '高陵县', '610100');
INSERT INTO `region_info` VALUES ('3347', '610201', '市辖区', '610200');
INSERT INTO `region_info` VALUES ('3348', '610202', '王益区', '610200');
INSERT INTO `region_info` VALUES ('3349', '610203', '印台区', '610200');
INSERT INTO `region_info` VALUES ('3350', '610204', '耀州区', '610200');
INSERT INTO `region_info` VALUES ('3351', '610222', '宜君县', '610200');
INSERT INTO `region_info` VALUES ('3352', '610301', '市辖区', '610300');
INSERT INTO `region_info` VALUES ('3353', '610302', '渭滨区', '610300');
INSERT INTO `region_info` VALUES ('3354', '610303', '金台区', '610300');
INSERT INTO `region_info` VALUES ('3355', '610304', '陈仓区', '610300');
INSERT INTO `region_info` VALUES ('3356', '610322', '凤翔县', '610300');
INSERT INTO `region_info` VALUES ('3357', '610323', '岐山县', '610300');
INSERT INTO `region_info` VALUES ('3358', '610324', '扶风县', '610300');
INSERT INTO `region_info` VALUES ('3359', '610326', '眉　县', '610300');
INSERT INTO `region_info` VALUES ('3360', '610327', '陇　县', '610300');
INSERT INTO `region_info` VALUES ('3361', '610328', '千阳县', '610300');
INSERT INTO `region_info` VALUES ('3362', '610329', '麟游县', '610300');
INSERT INTO `region_info` VALUES ('3363', '610330', '凤　县', '610300');
INSERT INTO `region_info` VALUES ('3364', '610331', '太白县', '610300');
INSERT INTO `region_info` VALUES ('3365', '610401', '市辖区', '610400');
INSERT INTO `region_info` VALUES ('3366', '610402', '秦都区', '610400');
INSERT INTO `region_info` VALUES ('3367', '610403', '杨凌区', '610400');
INSERT INTO `region_info` VALUES ('3368', '610404', '渭城区', '610400');
INSERT INTO `region_info` VALUES ('3369', '610422', '三原县', '610400');
INSERT INTO `region_info` VALUES ('3370', '610423', '泾阳县', '610400');
INSERT INTO `region_info` VALUES ('3371', '610424', '乾　县', '610400');
INSERT INTO `region_info` VALUES ('3372', '610425', '礼泉县', '610400');
INSERT INTO `region_info` VALUES ('3373', '610426', '永寿县', '610400');
INSERT INTO `region_info` VALUES ('3374', '610427', '彬　县', '610400');
INSERT INTO `region_info` VALUES ('3375', '610428', '长武县', '610400');
INSERT INTO `region_info` VALUES ('3376', '610429', '旬邑县', '610400');
INSERT INTO `region_info` VALUES ('3377', '610430', '淳化县', '610400');
INSERT INTO `region_info` VALUES ('3378', '610431', '武功县', '610400');
INSERT INTO `region_info` VALUES ('3379', '610481', '兴平市', '610400');
INSERT INTO `region_info` VALUES ('3380', '610501', '市辖区', '610500');
INSERT INTO `region_info` VALUES ('3381', '610502', '临渭区', '610500');
INSERT INTO `region_info` VALUES ('3382', '610521', '华　县', '610500');
INSERT INTO `region_info` VALUES ('3383', '610522', '潼关县', '610500');
INSERT INTO `region_info` VALUES ('3384', '610523', '大荔县', '610500');
INSERT INTO `region_info` VALUES ('3385', '610524', '合阳县', '610500');
INSERT INTO `region_info` VALUES ('3386', '610525', '澄城县', '610500');
INSERT INTO `region_info` VALUES ('3387', '610526', '蒲城县', '610500');
INSERT INTO `region_info` VALUES ('3388', '610527', '白水县', '610500');
INSERT INTO `region_info` VALUES ('3389', '610528', '富平县', '610500');
INSERT INTO `region_info` VALUES ('3390', '610581', '韩城市', '610500');
INSERT INTO `region_info` VALUES ('3391', '610582', '华阴市', '610500');
INSERT INTO `region_info` VALUES ('3392', '610601', '市辖区', '610600');
INSERT INTO `region_info` VALUES ('3393', '610602', '宝塔区', '610600');
INSERT INTO `region_info` VALUES ('3394', '610621', '延长县', '610600');
INSERT INTO `region_info` VALUES ('3395', '610622', '延川县', '610600');
INSERT INTO `region_info` VALUES ('3396', '610623', '子长县', '610600');
INSERT INTO `region_info` VALUES ('3397', '610624', '安塞县', '610600');
INSERT INTO `region_info` VALUES ('3398', '610625', '志丹县', '610600');
INSERT INTO `region_info` VALUES ('3399', '610626', '吴旗县', '610600');
INSERT INTO `region_info` VALUES ('3400', '610627', '甘泉县', '610600');
INSERT INTO `region_info` VALUES ('3401', '610628', '富　县', '610600');
INSERT INTO `region_info` VALUES ('3402', '610629', '洛川县', '610600');
INSERT INTO `region_info` VALUES ('3403', '610630', '宜川县', '610600');
INSERT INTO `region_info` VALUES ('3404', '610631', '黄龙县', '610600');
INSERT INTO `region_info` VALUES ('3405', '610632', '黄陵县', '610600');
INSERT INTO `region_info` VALUES ('3406', '610701', '市辖区', '610700');
INSERT INTO `region_info` VALUES ('3407', '610702', '汉台区', '610700');
INSERT INTO `region_info` VALUES ('3408', '610721', '南郑县', '610700');
INSERT INTO `region_info` VALUES ('3409', '610722', '城固县', '610700');
INSERT INTO `region_info` VALUES ('3410', '610723', '洋　县', '610700');
INSERT INTO `region_info` VALUES ('3411', '610724', '西乡县', '610700');
INSERT INTO `region_info` VALUES ('3412', '610725', '勉　县', '610700');
INSERT INTO `region_info` VALUES ('3413', '610726', '宁强县', '610700');
INSERT INTO `region_info` VALUES ('3414', '610727', '略阳县', '610700');
INSERT INTO `region_info` VALUES ('3415', '610728', '镇巴县', '610700');
INSERT INTO `region_info` VALUES ('3416', '610729', '留坝县', '610700');
INSERT INTO `region_info` VALUES ('3417', '610730', '佛坪县', '610700');
INSERT INTO `region_info` VALUES ('3418', '610801', '市辖区', '610800');
INSERT INTO `region_info` VALUES ('3419', '610802', '榆阳区', '610800');
INSERT INTO `region_info` VALUES ('3420', '610821', '神木县', '610800');
INSERT INTO `region_info` VALUES ('3421', '610822', '府谷县', '610800');
INSERT INTO `region_info` VALUES ('3422', '610823', '横山县', '610800');
INSERT INTO `region_info` VALUES ('3423', '610824', '靖边县', '610800');
INSERT INTO `region_info` VALUES ('3424', '610825', '定边县', '610800');
INSERT INTO `region_info` VALUES ('3425', '610826', '绥德县', '610800');
INSERT INTO `region_info` VALUES ('3426', '610827', '米脂县', '610800');
INSERT INTO `region_info` VALUES ('3427', '610828', '佳　县', '610800');
INSERT INTO `region_info` VALUES ('3428', '610829', '吴堡县', '610800');
INSERT INTO `region_info` VALUES ('3429', '610830', '清涧县', '610800');
INSERT INTO `region_info` VALUES ('3430', '610831', '子洲县', '610800');
INSERT INTO `region_info` VALUES ('3431', '610901', '市辖区', '610900');
INSERT INTO `region_info` VALUES ('3432', '610902', '汉滨区', '610900');
INSERT INTO `region_info` VALUES ('3433', '610921', '汉阴县', '610900');
INSERT INTO `region_info` VALUES ('3434', '610922', '石泉县', '610900');
INSERT INTO `region_info` VALUES ('3435', '610923', '宁陕县', '610900');
INSERT INTO `region_info` VALUES ('3436', '610924', '紫阳县', '610900');
INSERT INTO `region_info` VALUES ('3437', '610925', '岚皋县', '610900');
INSERT INTO `region_info` VALUES ('3438', '610926', '平利县', '610900');
INSERT INTO `region_info` VALUES ('3439', '610927', '镇坪县', '610900');
INSERT INTO `region_info` VALUES ('3440', '610928', '旬阳县', '610900');
INSERT INTO `region_info` VALUES ('3441', '610929', '白河县', '610900');
INSERT INTO `region_info` VALUES ('3442', '611001', '市辖区', '611000');
INSERT INTO `region_info` VALUES ('3443', '611002', '商州区', '611000');
INSERT INTO `region_info` VALUES ('3444', '611021', '洛南县', '611000');
INSERT INTO `region_info` VALUES ('3445', '611022', '丹凤县', '611000');
INSERT INTO `region_info` VALUES ('3446', '611023', '商南县', '611000');
INSERT INTO `region_info` VALUES ('3447', '611024', '山阳县', '611000');
INSERT INTO `region_info` VALUES ('3448', '611025', '镇安县', '611000');
INSERT INTO `region_info` VALUES ('3449', '611026', '柞水县', '611000');
INSERT INTO `region_info` VALUES ('3450', '620101', '市辖区', '620100');
INSERT INTO `region_info` VALUES ('3451', '620102', '城关区', '620100');
INSERT INTO `region_info` VALUES ('3452', '620103', '七里河区', '620100');
INSERT INTO `region_info` VALUES ('3453', '620104', '西固区', '620100');
INSERT INTO `region_info` VALUES ('3454', '620105', '安宁区', '620100');
INSERT INTO `region_info` VALUES ('3455', '620111', '红古区', '620100');
INSERT INTO `region_info` VALUES ('3456', '620121', '永登县', '620100');
INSERT INTO `region_info` VALUES ('3457', '620122', '皋兰县', '620100');
INSERT INTO `region_info` VALUES ('3458', '620123', '榆中县', '620100');
INSERT INTO `region_info` VALUES ('3459', '620201', '市辖区', '620200');
INSERT INTO `region_info` VALUES ('3460', '620301', '市辖区', '620300');
INSERT INTO `region_info` VALUES ('3461', '620302', '金川区', '620300');
INSERT INTO `region_info` VALUES ('3462', '620321', '永昌县', '620300');
INSERT INTO `region_info` VALUES ('3463', '620401', '市辖区', '620400');
INSERT INTO `region_info` VALUES ('3464', '620402', '白银区', '620400');
INSERT INTO `region_info` VALUES ('3465', '620403', '平川区', '620400');
INSERT INTO `region_info` VALUES ('3466', '620421', '靖远县', '620400');
INSERT INTO `region_info` VALUES ('3467', '620422', '会宁县', '620400');
INSERT INTO `region_info` VALUES ('3468', '620423', '景泰县', '620400');
INSERT INTO `region_info` VALUES ('3469', '620501', '市辖区', '620500');
INSERT INTO `region_info` VALUES ('3470', '620502', '秦城区', '620500');
INSERT INTO `region_info` VALUES ('3471', '620503', '北道区', '620500');
INSERT INTO `region_info` VALUES ('3472', '620521', '清水县', '620500');
INSERT INTO `region_info` VALUES ('3473', '620522', '秦安县', '620500');
INSERT INTO `region_info` VALUES ('3474', '620523', '甘谷县', '620500');
INSERT INTO `region_info` VALUES ('3475', '620524', '武山县', '620500');
INSERT INTO `region_info` VALUES ('3476', '620525', '张家川回族自治县', '620500');
INSERT INTO `region_info` VALUES ('3477', '620601', '市辖区', '620600');
INSERT INTO `region_info` VALUES ('3478', '620602', '凉州区', '620600');
INSERT INTO `region_info` VALUES ('3479', '620621', '民勤县', '620600');
INSERT INTO `region_info` VALUES ('3480', '620622', '古浪县', '620600');
INSERT INTO `region_info` VALUES ('3481', '620623', '天祝藏族自治县', '620600');
INSERT INTO `region_info` VALUES ('3482', '620701', '市辖区', '620700');
INSERT INTO `region_info` VALUES ('3483', '620702', '甘州区', '620700');
INSERT INTO `region_info` VALUES ('3484', '620721', '肃南裕固族自治县', '620700');
INSERT INTO `region_info` VALUES ('3485', '620722', '民乐县', '620700');
INSERT INTO `region_info` VALUES ('3486', '620723', '临泽县', '620700');
INSERT INTO `region_info` VALUES ('3487', '620724', '高台县', '620700');
INSERT INTO `region_info` VALUES ('3488', '620725', '山丹县', '620700');
INSERT INTO `region_info` VALUES ('3489', '620801', '市辖区', '620800');
INSERT INTO `region_info` VALUES ('3490', '620802', '崆峒区', '620800');
INSERT INTO `region_info` VALUES ('3491', '620821', '泾川县', '620800');
INSERT INTO `region_info` VALUES ('3492', '620822', '灵台县', '620800');
INSERT INTO `region_info` VALUES ('3493', '620823', '崇信县', '620800');
INSERT INTO `region_info` VALUES ('3494', '620824', '华亭县', '620800');
INSERT INTO `region_info` VALUES ('3495', '620825', '庄浪县', '620800');
INSERT INTO `region_info` VALUES ('3496', '620826', '静宁县', '620800');
INSERT INTO `region_info` VALUES ('3497', '620901', '市辖区', '620900');
INSERT INTO `region_info` VALUES ('3498', '620902', '肃州区', '620900');
INSERT INTO `region_info` VALUES ('3499', '620921', '金塔县', '620900');
INSERT INTO `region_info` VALUES ('3500', '620922', '安西县', '620900');
INSERT INTO `region_info` VALUES ('3501', '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `region_info` VALUES ('3502', '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `region_info` VALUES ('3503', '620981', '玉门市', '620900');
INSERT INTO `region_info` VALUES ('3504', '620982', '敦煌市', '620900');
INSERT INTO `region_info` VALUES ('3505', '621001', '市辖区', '621000');
INSERT INTO `region_info` VALUES ('3506', '621002', '西峰区', '621000');
INSERT INTO `region_info` VALUES ('3507', '621021', '庆城县', '621000');
INSERT INTO `region_info` VALUES ('3508', '621022', '环　县', '621000');
INSERT INTO `region_info` VALUES ('3509', '621023', '华池县', '621000');
INSERT INTO `region_info` VALUES ('3510', '621024', '合水县', '621000');
INSERT INTO `region_info` VALUES ('3511', '621025', '正宁县', '621000');
INSERT INTO `region_info` VALUES ('3512', '621026', '宁　县', '621000');
INSERT INTO `region_info` VALUES ('3513', '621027', '镇原县', '621000');
INSERT INTO `region_info` VALUES ('3514', '621101', '市辖区', '621100');
INSERT INTO `region_info` VALUES ('3515', '621102', '安定区', '621100');
INSERT INTO `region_info` VALUES ('3516', '621121', '通渭县', '621100');
INSERT INTO `region_info` VALUES ('3517', '621122', '陇西县', '621100');
INSERT INTO `region_info` VALUES ('3518', '621123', '渭源县', '621100');
INSERT INTO `region_info` VALUES ('3519', '621124', '临洮县', '621100');
INSERT INTO `region_info` VALUES ('3520', '621125', '漳　县', '621100');
INSERT INTO `region_info` VALUES ('3521', '621126', '岷　县', '621100');
INSERT INTO `region_info` VALUES ('3522', '621201', '市辖区', '621200');
INSERT INTO `region_info` VALUES ('3523', '621202', '武都区', '621200');
INSERT INTO `region_info` VALUES ('3524', '621221', '成　县', '621200');
INSERT INTO `region_info` VALUES ('3525', '621222', '文　县', '621200');
INSERT INTO `region_info` VALUES ('3526', '621223', '宕昌县', '621200');
INSERT INTO `region_info` VALUES ('3527', '621224', '康　县', '621200');
INSERT INTO `region_info` VALUES ('3528', '621225', '西和县', '621200');
INSERT INTO `region_info` VALUES ('3529', '621226', '礼　县', '621200');
INSERT INTO `region_info` VALUES ('3530', '621227', '徽　县', '621200');
INSERT INTO `region_info` VALUES ('3531', '621228', '两当县', '621200');
INSERT INTO `region_info` VALUES ('3532', '622901', '临夏市', '622900');
INSERT INTO `region_info` VALUES ('3533', '622921', '临夏县', '622900');
INSERT INTO `region_info` VALUES ('3534', '622922', '康乐县', '622900');
INSERT INTO `region_info` VALUES ('3535', '622923', '永靖县', '622900');
INSERT INTO `region_info` VALUES ('3536', '622924', '广河县', '622900');
INSERT INTO `region_info` VALUES ('3537', '622925', '和政县', '622900');
INSERT INTO `region_info` VALUES ('3538', '622926', '东乡族自治县', '622900');
INSERT INTO `region_info` VALUES ('3539', '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `region_info` VALUES ('3540', '623001', '合作市', '623000');
INSERT INTO `region_info` VALUES ('3541', '623021', '临潭县', '623000');
INSERT INTO `region_info` VALUES ('3542', '623022', '卓尼县', '623000');
INSERT INTO `region_info` VALUES ('3543', '623023', '舟曲县', '623000');
INSERT INTO `region_info` VALUES ('3544', '623024', '迭部县', '623000');
INSERT INTO `region_info` VALUES ('3545', '623025', '玛曲县', '623000');
INSERT INTO `region_info` VALUES ('3546', '623026', '碌曲县', '623000');
INSERT INTO `region_info` VALUES ('3547', '623027', '夏河县', '623000');
INSERT INTO `region_info` VALUES ('3548', '630101', '市辖区', '630100');
INSERT INTO `region_info` VALUES ('3549', '630102', '城东区', '630100');
INSERT INTO `region_info` VALUES ('3550', '630103', '城中区', '630100');
INSERT INTO `region_info` VALUES ('3551', '630104', '城西区', '630100');
INSERT INTO `region_info` VALUES ('3552', '630105', '城北区', '630100');
INSERT INTO `region_info` VALUES ('3553', '630121', '大通回族土族自治县', '630100');
INSERT INTO `region_info` VALUES ('3554', '630122', '湟中县', '630100');
INSERT INTO `region_info` VALUES ('3555', '630123', '湟源县', '630100');
INSERT INTO `region_info` VALUES ('3556', '632121', '平安县', '632100');
INSERT INTO `region_info` VALUES ('3557', '632122', '民和回族土族自治县', '632100');
INSERT INTO `region_info` VALUES ('3558', '632123', '乐都县', '632100');
INSERT INTO `region_info` VALUES ('3559', '632126', '互助土族自治县', '632100');
INSERT INTO `region_info` VALUES ('3560', '632127', '化隆回族自治县', '632100');
INSERT INTO `region_info` VALUES ('3561', '632128', '循化撒拉族自治县', '632100');
INSERT INTO `region_info` VALUES ('3562', '632221', '门源回族自治县', '632200');
INSERT INTO `region_info` VALUES ('3563', '632222', '祁连县', '632200');
INSERT INTO `region_info` VALUES ('3564', '632223', '海晏县', '632200');
INSERT INTO `region_info` VALUES ('3565', '632224', '刚察县', '632200');
INSERT INTO `region_info` VALUES ('3566', '632321', '同仁县', '632300');
INSERT INTO `region_info` VALUES ('3567', '632322', '尖扎县', '632300');
INSERT INTO `region_info` VALUES ('3568', '632323', '泽库县', '632300');
INSERT INTO `region_info` VALUES ('3569', '632324', '河南蒙古族自治县', '632300');
INSERT INTO `region_info` VALUES ('3570', '632521', '共和县', '632500');
INSERT INTO `region_info` VALUES ('3571', '632522', '同德县', '632500');
INSERT INTO `region_info` VALUES ('3572', '632523', '贵德县', '632500');
INSERT INTO `region_info` VALUES ('3573', '632524', '兴海县', '632500');
INSERT INTO `region_info` VALUES ('3574', '632525', '贵南县', '632500');
INSERT INTO `region_info` VALUES ('3575', '632621', '玛沁县', '632600');
INSERT INTO `region_info` VALUES ('3576', '632622', '班玛县', '632600');
INSERT INTO `region_info` VALUES ('3577', '632623', '甘德县', '632600');
INSERT INTO `region_info` VALUES ('3578', '632624', '达日县', '632600');
INSERT INTO `region_info` VALUES ('3579', '632625', '久治县', '632600');
INSERT INTO `region_info` VALUES ('3580', '632626', '玛多县', '632600');
INSERT INTO `region_info` VALUES ('3581', '632721', '玉树县', '632700');
INSERT INTO `region_info` VALUES ('3582', '632722', '杂多县', '632700');
INSERT INTO `region_info` VALUES ('3583', '632723', '称多县', '632700');
INSERT INTO `region_info` VALUES ('3584', '632724', '治多县', '632700');
INSERT INTO `region_info` VALUES ('3585', '632725', '囊谦县', '632700');
INSERT INTO `region_info` VALUES ('3586', '632726', '曲麻莱县', '632700');
INSERT INTO `region_info` VALUES ('3587', '632801', '格尔木市', '632800');
INSERT INTO `region_info` VALUES ('3588', '632802', '德令哈市', '632800');
INSERT INTO `region_info` VALUES ('3589', '632821', '乌兰县', '632800');
INSERT INTO `region_info` VALUES ('3590', '632822', '都兰县', '632800');
INSERT INTO `region_info` VALUES ('3591', '632823', '天峻县', '632800');
INSERT INTO `region_info` VALUES ('3592', '640101', '市辖区', '640100');
INSERT INTO `region_info` VALUES ('3593', '640104', '兴庆区', '640100');
INSERT INTO `region_info` VALUES ('3594', '640105', '西夏区', '640100');
INSERT INTO `region_info` VALUES ('3595', '640106', '金凤区', '640100');
INSERT INTO `region_info` VALUES ('3596', '640121', '永宁县', '640100');
INSERT INTO `region_info` VALUES ('3597', '640122', '贺兰县', '640100');
INSERT INTO `region_info` VALUES ('3598', '640181', '灵武市', '640100');
INSERT INTO `region_info` VALUES ('3599', '640201', '市辖区', '640200');
INSERT INTO `region_info` VALUES ('3600', '640202', '大武口区', '640200');
INSERT INTO `region_info` VALUES ('3601', '640205', '惠农区', '640200');
INSERT INTO `region_info` VALUES ('3602', '640221', '平罗县', '640200');
INSERT INTO `region_info` VALUES ('3603', '640301', '市辖区', '640300');
INSERT INTO `region_info` VALUES ('3604', '640302', '利通区', '640300');
INSERT INTO `region_info` VALUES ('3605', '640323', '盐池县', '640300');
INSERT INTO `region_info` VALUES ('3606', '640324', '同心县', '640300');
INSERT INTO `region_info` VALUES ('3607', '640381', '青铜峡市', '640300');
INSERT INTO `region_info` VALUES ('3608', '640401', '市辖区', '640400');
INSERT INTO `region_info` VALUES ('3609', '640402', '原州区', '640400');
INSERT INTO `region_info` VALUES ('3610', '640422', '西吉县', '640400');
INSERT INTO `region_info` VALUES ('3611', '640423', '隆德县', '640400');
INSERT INTO `region_info` VALUES ('3612', '640424', '泾源县', '640400');
INSERT INTO `region_info` VALUES ('3613', '640425', '彭阳县', '640400');
INSERT INTO `region_info` VALUES ('3614', '640501', '市辖区', '640500');
INSERT INTO `region_info` VALUES ('3615', '640502', '沙坡头区', '640500');
INSERT INTO `region_info` VALUES ('3616', '640521', '中宁县', '640500');
INSERT INTO `region_info` VALUES ('3617', '640522', '海原县', '640500');
INSERT INTO `region_info` VALUES ('3618', '650101', '市辖区', '650100');
INSERT INTO `region_info` VALUES ('3619', '650102', '天山区', '650100');
INSERT INTO `region_info` VALUES ('3620', '650103', '沙依巴克区', '650100');
INSERT INTO `region_info` VALUES ('3621', '650104', '新市区', '650100');
INSERT INTO `region_info` VALUES ('3622', '650105', '水磨沟区', '650100');
INSERT INTO `region_info` VALUES ('3623', '650106', '头屯河区', '650100');
INSERT INTO `region_info` VALUES ('3624', '650107', '达坂城区', '650100');
INSERT INTO `region_info` VALUES ('3625', '650108', '东山区', '650100');
INSERT INTO `region_info` VALUES ('3626', '650121', '乌鲁木齐县', '650100');
INSERT INTO `region_info` VALUES ('3627', '650201', '市辖区', '650200');
INSERT INTO `region_info` VALUES ('3628', '650202', '独山子区', '650200');
INSERT INTO `region_info` VALUES ('3629', '650203', '克拉玛依区', '650200');
INSERT INTO `region_info` VALUES ('3630', '650204', '白碱滩区', '650200');
INSERT INTO `region_info` VALUES ('3631', '650205', '乌尔禾区', '650200');
INSERT INTO `region_info` VALUES ('3632', '652101', '吐鲁番市', '652100');
INSERT INTO `region_info` VALUES ('3633', '652122', '鄯善县', '652100');
INSERT INTO `region_info` VALUES ('3634', '652123', '托克逊县', '652100');
INSERT INTO `region_info` VALUES ('3635', '652201', '哈密市', '652200');
INSERT INTO `region_info` VALUES ('3636', '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `region_info` VALUES ('3637', '652223', '伊吾县', '652200');
INSERT INTO `region_info` VALUES ('3638', '652301', '昌吉市', '652300');
INSERT INTO `region_info` VALUES ('3639', '652302', '阜康市', '652300');
INSERT INTO `region_info` VALUES ('3640', '652303', '米泉市', '652300');
INSERT INTO `region_info` VALUES ('3641', '652323', '呼图壁县', '652300');
INSERT INTO `region_info` VALUES ('3642', '652324', '玛纳斯县', '652300');
INSERT INTO `region_info` VALUES ('3643', '652325', '奇台县', '652300');
INSERT INTO `region_info` VALUES ('3644', '652327', '吉木萨尔县', '652300');
INSERT INTO `region_info` VALUES ('3645', '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `region_info` VALUES ('3646', '652701', '博乐市', '652700');
INSERT INTO `region_info` VALUES ('3647', '652722', '精河县', '652700');
INSERT INTO `region_info` VALUES ('3648', '652723', '温泉县', '652700');
INSERT INTO `region_info` VALUES ('3649', '652801', '库尔勒市', '652800');
INSERT INTO `region_info` VALUES ('3650', '652822', '轮台县', '652800');
INSERT INTO `region_info` VALUES ('3651', '652823', '尉犁县', '652800');
INSERT INTO `region_info` VALUES ('3652', '652824', '若羌县', '652800');
INSERT INTO `region_info` VALUES ('3653', '652825', '且末县', '652800');
INSERT INTO `region_info` VALUES ('3654', '652826', '焉耆回族自治县', '652800');
INSERT INTO `region_info` VALUES ('3655', '652827', '和静县', '652800');
INSERT INTO `region_info` VALUES ('3656', '652828', '和硕县', '652800');
INSERT INTO `region_info` VALUES ('3657', '652829', '博湖县', '652800');
INSERT INTO `region_info` VALUES ('3658', '652901', '阿克苏市', '652900');
INSERT INTO `region_info` VALUES ('3659', '652922', '温宿县', '652900');
INSERT INTO `region_info` VALUES ('3660', '652923', '库车县', '652900');
INSERT INTO `region_info` VALUES ('3661', '652924', '沙雅县', '652900');
INSERT INTO `region_info` VALUES ('3662', '652925', '新和县', '652900');
INSERT INTO `region_info` VALUES ('3663', '652926', '拜城县', '652900');
INSERT INTO `region_info` VALUES ('3664', '652927', '乌什县', '652900');
INSERT INTO `region_info` VALUES ('3665', '652928', '阿瓦提县', '652900');
INSERT INTO `region_info` VALUES ('3666', '652929', '柯坪县', '652900');
INSERT INTO `region_info` VALUES ('3667', '653001', '阿图什市', '653000');
INSERT INTO `region_info` VALUES ('3668', '653022', '阿克陶县', '653000');
INSERT INTO `region_info` VALUES ('3669', '653023', '阿合奇县', '653000');
INSERT INTO `region_info` VALUES ('3670', '653024', '乌恰县', '653000');
INSERT INTO `region_info` VALUES ('3671', '653101', '喀什市', '653100');
INSERT INTO `region_info` VALUES ('3672', '653121', '疏附县', '653100');
INSERT INTO `region_info` VALUES ('3673', '653122', '疏勒县', '653100');
INSERT INTO `region_info` VALUES ('3674', '653123', '英吉沙县', '653100');
INSERT INTO `region_info` VALUES ('3675', '653124', '泽普县', '653100');
INSERT INTO `region_info` VALUES ('3676', '653125', '莎车县', '653100');
INSERT INTO `region_info` VALUES ('3677', '653126', '叶城县', '653100');
INSERT INTO `region_info` VALUES ('3678', '653127', '麦盖提县', '653100');
INSERT INTO `region_info` VALUES ('3679', '653128', '岳普湖县', '653100');
INSERT INTO `region_info` VALUES ('3680', '653129', '伽师县', '653100');
INSERT INTO `region_info` VALUES ('3681', '653130', '巴楚县', '653100');
INSERT INTO `region_info` VALUES ('3682', '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `region_info` VALUES ('3683', '653201', '和田市', '653200');
INSERT INTO `region_info` VALUES ('3684', '653221', '和田县', '653200');
INSERT INTO `region_info` VALUES ('3685', '653222', '墨玉县', '653200');
INSERT INTO `region_info` VALUES ('3686', '653223', '皮山县', '653200');
INSERT INTO `region_info` VALUES ('3687', '653224', '洛浦县', '653200');
INSERT INTO `region_info` VALUES ('3688', '653225', '策勒县', '653200');
INSERT INTO `region_info` VALUES ('3689', '653226', '于田县', '653200');
INSERT INTO `region_info` VALUES ('3690', '653227', '民丰县', '653200');
INSERT INTO `region_info` VALUES ('3691', '654002', '伊宁市', '654000');
INSERT INTO `region_info` VALUES ('3692', '654003', '奎屯市', '654000');
INSERT INTO `region_info` VALUES ('3693', '654021', '伊宁县', '654000');
INSERT INTO `region_info` VALUES ('3694', '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `region_info` VALUES ('3695', '654023', '霍城县', '654000');
INSERT INTO `region_info` VALUES ('3696', '654024', '巩留县', '654000');
INSERT INTO `region_info` VALUES ('3697', '654025', '新源县', '654000');
INSERT INTO `region_info` VALUES ('3698', '654026', '昭苏县', '654000');
INSERT INTO `region_info` VALUES ('3699', '654027', '特克斯县', '654000');
INSERT INTO `region_info` VALUES ('3700', '654028', '尼勒克县', '654000');
INSERT INTO `region_info` VALUES ('3701', '654201', '塔城市', '654200');
INSERT INTO `region_info` VALUES ('3702', '654202', '乌苏市', '654200');
INSERT INTO `region_info` VALUES ('3703', '654221', '额敏县', '654200');
INSERT INTO `region_info` VALUES ('3704', '654223', '沙湾县', '654200');
INSERT INTO `region_info` VALUES ('3705', '654224', '托里县', '654200');
INSERT INTO `region_info` VALUES ('3706', '654225', '裕民县', '654200');
INSERT INTO `region_info` VALUES ('3707', '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `region_info` VALUES ('3708', '654301', '阿勒泰市', '654300');
INSERT INTO `region_info` VALUES ('3709', '654321', '布尔津县', '654300');
INSERT INTO `region_info` VALUES ('3710', '654322', '富蕴县', '654300');
INSERT INTO `region_info` VALUES ('3711', '654323', '福海县', '654300');
INSERT INTO `region_info` VALUES ('3712', '654324', '哈巴河县', '654300');
INSERT INTO `region_info` VALUES ('3713', '654325', '青河县', '654300');
INSERT INTO `region_info` VALUES ('3714', '654326', '吉木乃县', '654300');
INSERT INTO `region_info` VALUES ('3715', '659001', '石河子市', '659000');
INSERT INTO `region_info` VALUES ('3716', '659002', '阿拉尔市', '659000');
INSERT INTO `region_info` VALUES ('3717', '659003', '图木舒克市', '659000');
INSERT INTO `region_info` VALUES ('3718', '659004', '五家渠市', '659000');

-- ----------------------------
-- Table structure for special_area_supervise
-- ----------------------------
DROP TABLE IF EXISTS `special_area_supervise`;
CREATE TABLE `special_area_supervise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fence_number` varchar(64) DEFAULT NULL COMMENT '围栏编号',
  `fence_name` varchar(64) DEFAULT NULL COMMENT '监管区域名称',
  `region_code` varchar(64) DEFAULT NULL COMMENT '行政区划代码',
  `alarm_rank` int(11) DEFAULT NULL COMMENT '预警级别',
  `total_vehicle` int(11) DEFAULT NULL COMMENT '总车辆数',
  `empty_vehicle` int(11) DEFAULT NULL COMMENT '空载数',
  `passenger_vehicle` int(11) DEFAULT NULL COMMENT '载客车辆数',
  `state` int(11) DEFAULT NULL COMMENT '状态 1启用 0未启用',
  `limited_speed` int(11) DEFAULT NULL COMMENT '限速，单位km/h',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of special_area_supervise
-- ----------------------------

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '组织机构名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父id',
  `parent_ids` varchar(100) DEFAULT '' COMMENT '父ids',
  `status_id` char(1) DEFAULT '1' COMMENT '状态',
  `email` varchar(40) DEFAULT NULL COMMENT '邮箱',
  `user_id` bigint(20) DEFAULT NULL COMMENT '负责人',
  `sort_no` int(3) DEFAULT NULL COMMENT '排序号',
  `expend` int(1) DEFAULT '0' COMMENT '展开状态(1:展开;0:收缩)',
  `is_leaf` int(1) DEFAULT '1' COMMENT '叶子节点(0:树枝节点;1:叶子节点)',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES ('1', '合肥运输管处', '0', '', '1', '111@163.com', '4', null, '0', '1', '总办', '2016-11-23 16:34:28', '2016-11-23 16:34:28');
INSERT INTO `sys_organization` VALUES ('2', '综合部', '1', '', '1', '123@163.com', '5', null, '0', '1', '综合部', '2016-11-23 16:34:28', '2016-11-23 16:34:28');
INSERT INTO `sys_organization` VALUES ('3', '研发部', '1', '', '1', '124@163.com', '6', null, '0', '1', '研发部', '2016-11-23 16:34:28', '2016-11-23 16:34:28');
INSERT INTO `sys_organization` VALUES ('4', '测试部', '1', '', '1', '125@163.com', '4', null, '0', '1', '测试部', '2016-11-23 16:34:28', '2016-11-23 16:34:28');
INSERT INTO `sys_organization` VALUES ('5', '质量部', '1', '', '1', '126@163.com', '5', null, '0', '1', '质量部', '2016-11-23 16:34:28', '2016-11-23 16:34:28');
INSERT INTO `sys_organization` VALUES ('6', '运营部', '1', '', '1', '127@163.com', '6', null, '0', '1', '运营部', '2016-11-24 16:34:28', '2016-11-23 16:34:28');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` varchar(40) DEFAULT '' COMMENT '类型',
  `url` varchar(80) DEFAULT '' COMMENT 'url',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父id',
  `parent_ids` varchar(100) DEFAULT NULL COMMENT '父ids',
  `permission_name` varchar(100) DEFAULT '' COMMENT '权限名',
  `permission_value` varchar(100) DEFAULT '' COMMENT '权限值',
  `status_id` char(1) DEFAULT '1' COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sort_no` int(11) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT NULL COMMENT '是否为父节点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '1', '', '0', null, '菜单管理', 'admin:read', '1', '2016-11-23 16:34:28', '2016-12-15 16:41:28', null, null, '1');
INSERT INTO `sys_permission` VALUES ('2', '1', '', '1', null, '首页概览', 'admin:insert', '1', '2016-11-23 16:35:47', '2016-12-15 16:41:12', null, null, '1');
INSERT INTO `sys_permission` VALUES ('3', '1', '', '1', null, '基本信息', 'admin:delete', '1', '2016-11-23 16:36:23', '2016-12-15 16:41:00', null, null, '1');
INSERT INTO `sys_permission` VALUES ('4', '1', '', '1', null, '运营监管', 'admin:update', '1', '2016-11-23 16:36:55', '2016-12-15 16:40:46', null, null, '1');
INSERT INTO `sys_permission` VALUES ('5', '1', '', '1', null, '统计分析', 'user:update', '1', '2016-11-23 16:37:54', '2016-11-23 16:37:54', null, null, '1');
INSERT INTO `sys_permission` VALUES ('6', '1', '', '1', null, '系统管理', 'user:read', '1', '2016-11-23 16:38:22', '2016-11-23 16:38:22', null, null, '1');
INSERT INTO `sys_permission` VALUES ('7', '1', '', '1', null, '车辆监管', 'user:insert', '1', '2016-11-23 16:38:45', '2016-12-21 10:56:56', null, null, '1');
INSERT INTO `sys_permission` VALUES ('8', '1', '', '1', null, '合乘信息', 'user:delete', '1', '2016-11-23 16:39:25', '2016-11-23 16:39:25', null, null, '1');
INSERT INTO `sys_permission` VALUES ('10', '1', '', '1', null, '职业能力评价', 'super:delete', '1', '2016-12-15 16:07:53', '2016-12-15 16:07:53', null, null, '1');
INSERT INTO `sys_permission` VALUES ('11', '1', '/system/security/userlist', '6', null, '用户管理', 'super:read', '1', '2016-12-15 16:08:16', '2016-12-15 16:08:16', null, '0601', '0');
INSERT INTO `sys_permission` VALUES ('12', '1', '/system/role/rolelist', '6', null, '角色管理', 'super:update', '1', '2016-12-15 16:08:47', '2016-12-21 11:33:03', null, '0602', '0');
INSERT INTO `sys_permission` VALUES ('13', '1', '/system/permission/permissionlist', '6', null, '权限管理', 'super:insert', '1', '2016-12-15 16:09:14', '2016-12-21 11:32:51', null, '0603', '0');
INSERT INTO `sys_permission` VALUES ('14', '1', '/system/organization/organizationlist', '6', null, '部门管理', 'super:insert', '1', null, null, null, '0604', '0');
INSERT INTO `sys_permission` VALUES ('15', '1', '', '4', null, '预警信息', 'admin:read', '1', null, null, null, '0401', '1');
INSERT INTO `sys_permission` VALUES ('16', '1', '', '4', null, '许可信息查询', 'admin:read', '1', null, null, null, '0402', '1');
INSERT INTO `sys_permission` VALUES ('17', '1', '', '4', null, '许可信息录入(暂无)', 'admin:read', '1', null, null, null, '0403', '1');
INSERT INTO `sys_permission` VALUES ('18', '1', '', '4', null, '信息差异（暂无）', 'admin:read', '1', null, null, null, '0404', '1');
INSERT INTO `sys_permission` VALUES ('19', '1', '', '4', null, '营运信息', 'admin:read', '1', null, null, null, '0405', '1');
INSERT INTO `sys_permission` VALUES ('20', '1', '', '4', null, '区域运营监管', 'admin:read', '1', null, null, null, '0406', '1');
INSERT INTO `sys_permission` VALUES ('21', '1', '', '4', null, '服务质量', 'admin:read', '1', null, null, null, '0407', '1');
INSERT INTO `sys_permission` VALUES ('22', '1', '', '15', null, '告警信息', 'admin:read', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('23', '1', '/company/permit/list', '16', null, '企业经营许可查询', 'admin:read', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('24', '1', '/vehicle/info/list', '16', null, '车辆运输证查询', 'admin:read', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('25', '1', '/driver/info/list', '16', null, '驾驶员证信息查询', 'admin:read', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('26', '1', '', '17', null, '企业经营许可录入', 'admin:read', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('27', '1', '', '17', null, '车辆运输证录入', 'admin:read', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('28', '1', '', '17', null, '驾驶员证信息录入', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('29', '1', '', '18', null, '车辆信息报备差异', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('30', '1', '', '18', null, '驾驶员证报备差异', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('31', '1', '/operation/order/list', '19', null, '订单业务信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('32', '1', '/operation/operate/list', '19', null, '企业营运数据', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('33', '1', '/operation/logInOut/list', '19', null, '车辆运营上下线', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('34', '1', '/operation/vehicleSpecial/list', '19', null, '特殊车辆', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('35', '1', '', '19', null, '超经营区域车辆', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('36', '1', '/operation/passengerInfo/list', '19', null, '乘客信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('37', '1', '', '20', null, '热力图', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('38', '1', '', '20', null, '企业分布图', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('39', '1', '', '20', null, '超经营区域分析', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('40', '1', '', '20', null, '异常聚集信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('41', '1', '/operation/passengerEvaluation/list', '21', null, '乘客评价信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('42', '1', '/operation/passengerComplaint/list', '21', null, '乘客投诉信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('43', '1', '/operation/driverPunish/list', '21', null, '驾驶员处罚信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('44', '1', '/operation/driverReputation/list', '21', null, '驾驶员信誉信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('45', '1', '', '3', null, '综合信息', 'admin:insert', '1', null, null, null, '0301', '0');
INSERT INTO `sys_permission` VALUES ('46', '1', '', '3', null, '基础信息', 'admin:insert', '1', null, null, null, '0302', '0');
INSERT INTO `sys_permission` VALUES ('47', '1', '/info/general/platformInfo', '45', null, '平台信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('48', '1', '/info/general/carInfo', '45', null, '车辆信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('49', '1', '/info/general/driverInfo', '45', null, '驾驶员信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('50', '1', '/info/base/platformBaseInfo', '46', null, '平台基本信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('51', '1', '/info/base/platformPermitInfo', '46', null, '平台经营许可信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('52', '1', '/info/base/platformScaleInfo', '46', null, '平台营运规模信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('53', '1', '/info/base/platformPayInfo', '46', null, '平台支付信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('54', '1', '/info/base/platformServiceInfo', '46', null, '平台服务机构', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('55', '1', '/info/base/platformFareInfo', '46', null, '平台运价信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('56', '1', '/info/base/carBaseInfo', '46', null, '车辆基本信息', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('57', '1', '/info/base/carInsuranceInfo', '46', null, '车辆保险信息', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('58', '1', '/info/base/carTotalMileInfo', '46', null, '车辆里程信息', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('59', '1', '/info/base/driverBaseInfo', '46', null, '驾驶员基本信息', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('60', '1', '/info/base/driverEducateInfo', '46', null, '驾驶员培训信息', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('61', '1', '/info/base/driverAppInfo', '46', null, '驾驶员移动终端', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('62', '1', '/info/base/driverStatInfo', '46', null, '驾驶员统计信息', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('63', '1', '', '1', null, '征信系统', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('64', '1', '', '8', null, '预警信息', 'user:delete', '1', null, null, null, '0801', '0');
INSERT INTO `sys_permission` VALUES ('65', '1', '', '8', null, '信息对比', 'user:delete', '1', null, null, null, '0802', '0');
INSERT INTO `sys_permission` VALUES ('66', '1', '', '8', null, '行业管理部门备案', 'user:delete', '1', null, null, null, '0803', '0');
INSERT INTO `sys_permission` VALUES ('67', '1', '', '8', null, '平台信息', 'user:delete', '1', null, null, null, '0804', '0');
INSERT INTO `sys_permission` VALUES ('68', '1', '', '8', null, '私人小客车合乘', 'user:delete', '1', null, null, null, '0805', '0');
INSERT INTO `sys_permission` VALUES ('69', '1', '', '8', null, '统计分析管理', 'user:delete', '1', null, null, null, '0806', '0');
INSERT INTO `sys_permission` VALUES ('70', '1', '', '10', null, '特性分析', 'user:delete', '1', null, null, null, '1001', '0');
INSERT INTO `sys_permission` VALUES ('71', '1', '', '10', null, '选取指标', 'user:delete', '1', null, null, null, '1002', '0');
INSERT INTO `sys_permission` VALUES ('72', '1', '', '10', null, '评价机制', 'user:delete', '1', null, null, null, '1003', '0');
INSERT INTO `sys_permission` VALUES ('73', '1', '', '10', null, '信息发布与查询', 'user:delete', '1', null, null, null, '1004', '0');
INSERT INTO `sys_permission` VALUES ('74', '1', '', '63', null, '运营企业征信管理', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('75', '1', '', '63', null, '驾驶员征信管理', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('76', '1', '', '63', null, '乘客征信管理', 'user:delete', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('77', '1', '/map/map_main_monitor', '7', null, '车辆跟踪监控', 'admin:insert', '1', null, null, null, '0701', '0');
INSERT INTO `sys_permission` VALUES ('78', '1', '/map/track_line/track_line_main', '7', null, '历史轨迹查询', 'admin:insert', '1', null, null, null, '0702', '0');
INSERT INTO `sys_permission` VALUES ('79', '1', '', '7', null, '在线率信息监控', 'admin:insert', '1', null, null, null, '0703', '0');
INSERT INTO `sys_permission` VALUES ('80', '1', '', '7', null, '运营实时跟踪', 'admin:insert', '1', null, null, null, '0704', '0');
INSERT INTO `sys_permission` VALUES ('81', '1', '', '7', null, '特定区域车辆监管', 'admin:insert', '1', null, null, null, '0705', '0');
INSERT INTO `sys_permission` VALUES ('82', '1', '', '7', null, '电子围栏出入信息', 'admin:insert', '1', null, null, null, '0706', '0');
INSERT INTO `sys_permission` VALUES ('83', '1', '', '7', null, '超时驾驶信息', 'admin:insert', '1', null, null, null, '0707', '0');
INSERT INTO `sys_permission` VALUES ('84', '1', '', '7', null, '超速驾驶信息', 'admin:insert', '1', null, null, null, '0708', '0');
INSERT INTO `sys_permission` VALUES ('85', '1', '/map/fenceList', '7', null, '电子围栏信息维护', 'admin:insert', '1', null, null, null, '0709', '0');
INSERT INTO `sys_permission` VALUES ('86', '1', '/map/abnormalFence', '7', null, '异常聚集告警配置', 'admin:insert', '1', null, null, null, '0710', '0');
INSERT INTO `sys_permission` VALUES ('87', '1', '/map/abnormal_fence_monitor/abnormal_fence_main', '7', null, '异常聚集监控', 'admin:insert', '1', null, null, null, '0711', '0');
INSERT INTO `sys_permission` VALUES ('88', '1', '', '2', null, '企业首页', 'admin:insert', '1', null, null, null, '0201', '0');
INSERT INTO `sys_permission` VALUES ('89', '1', '', '2', null, '数据概览', 'admin:insert', '1', null, null, null, '0202', '0');
INSERT INTO `sys_permission` VALUES ('90', '1', '', '2', null, '地图导航', 'admin:insert', '1', null, null, null, '0203', '0');
INSERT INTO `sys_permission` VALUES ('91', '1', '', '5', null, '营运情况统计', 'admin:insert', '1', null, null, null, '0501', '0');
INSERT INTO `sys_permission` VALUES ('92', '1', '', '5', null, '服务质量统计', 'admin:insert', '1', null, null, null, '0502', '0');
INSERT INTO `sys_permission` VALUES ('93', '1', '/statistics/businessStatus/companyBusiness', '91', null, '企业营运情况统计', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('94', '1', '/statistics/businessStatus/orderBusiness', '91', null, '营运订单数据统计', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('95', '1', '/statistics/businessStatus/carBusiness', '91', null, '车辆运行信息统计', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('96', '1', '/statistics/businessStatus/platformScale', '91', null, '平台市场占有率', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('97', '1', '/statistics/businessStatus/useCar', '91', null, '用车时间段分布', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('98', '1', '/statistics/businessStatus/carOrder', '91', null, '车辆接单量分布', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('99', '1', '/statistics/businessStatus/overManagement', '91', null, '超经营区域车辆统计', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('100', '1', '/statistics/businessStatus/unreportedCar', '91', null, '未报备车辆统计', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('101', '1', '/statistics/businessStatus/carYoY', '91', null, '车辆同比', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('102', '1', '/statistics/businessStatus/driverYoY', '91', null, '驾驶员同比', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('103', '1', '/statistics/businessStatus/orderYoY', '91', null, '订单同比', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('104', '1', '/statistics/serviceQuality/passengerAssess', '92', null, '乘客评价统计', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('105', '1', '/statistics/serviceQuality/driverPunish', '92', null, '驾驶员处罚统计', 'admin:insert', '1', null, null, null, null, '0');
INSERT INTO `sys_permission` VALUES ('106', '1', '/statistics/serviceQuality/driverReputation', '92', null, '驾驶员信誉统计', 'admin:insert', '1', null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(40) DEFAULT '' COMMENT '角色名',
  `role_value` varchar(20) DEFAULT '' COMMENT '角色值',
  `status_id` char(1) DEFAULT '1' COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'super', '1', null, null);
INSERT INTO `sys_role` VALUES ('2', '高级管理员', 'advanced', '1', null, null);
INSERT INTO `sys_role` VALUES ('3', '管理员', 'admin', '1', null, null);
INSERT INTO `sys_role` VALUES ('4', '普通用户', 'user', '1', null, null);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色',
  `permission_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '权限',
  `status_id` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1', '1', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('2', '1', '2', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('3', '1', '3', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('4', '1', '4', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('5', '1', '5', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('6', '1', '6', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('7', '1', '7', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('8', '1', '8', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('9', '1', '10', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('10', '1', '11', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('11', '1', '12', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('12', '1', '13', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('13', '2', '1', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('14', '2', '2', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('15', '2', '3', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('16', '2', '4', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('17', '2', '5', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('18', '2', '6', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('19', '2', '7', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('20', '2', '8', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('21', '2', '10', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('22', '2', '11', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('23', '2', '12', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('24', '2', '13', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('25', '3', '1', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('26', '3', '2', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('27', '3', '3', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('28', '3', '4', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('29', '3', '5', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('30', '3', '6', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('31', '3', '7', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('32', '3', '8', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('33', '3', '10', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('34', '3', '11', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('35', '3', '12', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('36', '3', '13', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('37', '4', '1', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('38', '4', '2', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('39', '4', '3', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('40', '4', '4', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('41', '4', '5', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('42', '4', '6', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('43', '4', '7', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('44', '4', '8', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('45', '4', '10', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('46', '4', '11', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('47', '4', '12', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('48', '4', '13', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('49', '1', '14', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('50', '2', '14', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('51', '3', '14', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('52', '4', '14', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('53', '3', '15', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('54', '3', '16', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('55', '3', '17', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('56', '3', '18', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('57', '3', '19', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('58', '3', '20', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('59', '3', '21', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('60', '3', '22', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('61', '3', '23', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('62', '3', '24', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('63', '3', '25', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('64', '3', '26', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('65', '3', '27', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('66', '3', '28', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('67', '3', '29', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('68', '3', '30', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('69', '3', '31', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('70', '3', '32', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('71', '3', '33', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('72', '3', '34', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('73', '3', '35', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('74', '3', '36', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('75', '3', '37', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('76', '3', '38', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('77', '3', '39', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('78', '3', '40', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('79', '3', '41', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('80', '3', '42', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('81', '3', '43', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('82', '3', '44', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('83', '1', '15', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('84', '1', '16', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('85', '1', '17', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('86', '1', '18', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('87', '1', '19', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('88', '1', '20', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('89', '1', '21', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('90', '1', '22', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('91', '1', '23', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('92', '1', '24', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('93', '1', '25', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('94', '1', '26', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('95', '1', '27', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('96', '1', '28', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('97', '1', '29', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('98', '1', '30', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('99', '1', '31', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('100', '1', '32', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('101', '1', '33', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('102', '1', '34', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('103', '1', '35', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('104', '1', '36', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('105', '1', '37', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('106', '1', '38', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('107', '1', '39', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('108', '1', '40', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('109', '1', '41', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('110', '1', '42', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('111', '1', '43', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('112', '1', '44', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('113', '2', '15', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('114', '2', '16', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('115', '2', '17', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('116', '2', '18', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('117', '2', '19', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('118', '2', '20', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('119', '2', '21', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('120', '2', '22', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('121', '2', '23', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('122', '2', '24', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('123', '2', '25', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('124', '2', '26', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('125', '2', '27', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('126', '2', '29', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('127', '2', '30', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('128', '2', '31', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('129', '2', '32', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('130', '2', '33', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('131', '2', '34', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('132', '2', '35', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('133', '2', '36', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('134', '2', '37', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('135', '2', '38', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('136', '2', '39', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('137', '2', '40', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('138', '2', '41', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('139', '2', '42', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('140', '2', '43', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('141', '2', '44', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('142', '4', '15', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('143', '4', '16', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('144', '4', '17', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('145', '4', '18', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('146', '4', '19', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('147', '4', '20', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('148', '4', '21', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('149', '4', '22', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('150', '4', '23', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('151', '4', '24', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('152', '4', '25', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('153', '4', '26', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('154', '4', '27', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('155', '4', '28', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('156', '4', '29', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('157', '4', '30', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('158', '4', '31', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('159', '4', '32', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('160', '4', '33', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('161', '4', '34', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('162', '4', '35', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('163', '4', '36', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('164', '4', '37', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('165', '4', '38', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('166', '4', '39', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('167', '4', '40', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('168', '4', '41', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('169', '4', '42', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('170', '4', '43', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('171', '4', '44', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('172', '3', '45', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('173', '3', '46', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('174', '3', '47', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('175', '3', '48', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('176', '3', '49', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('177', '3', '50', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('178', '3', '51', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('179', '3', '52', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('180', '3', '53', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('181', '3', '54', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('182', '3', '55', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('183', '3', '56', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('184', '3', '57', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('185', '3', '58', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('186', '3', '59', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('187', '3', '60', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('188', '3', '61', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('189', '3', '62', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('190', '1', '45', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('191', '1', '46', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('192', '1', '47', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('193', '1', '48', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('194', '1', '49', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('195', '1', '50', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('196', '1', '51', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('197', '1', '52', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('198', '1', '53', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('199', '1', '54', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('200', '1', '55', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('201', '1', '56', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('202', '1', '57', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('203', '1', '58', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('204', '1', '59', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('205', '1', '60', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('206', '1', '61', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('207', '1', '62', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('208', '2', '45', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('209', '2', '46', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('210', '2', '47', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('211', '2', '48', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('212', '2', '49', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('213', '2', '50', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('214', '2', '51', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('215', '2', '52', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('216', '2', '53', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('217', '2', '54', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('218', '2', '55', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('219', '2', '56', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('220', '2', '57', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('221', '2', '58', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('222', '2', '59', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('223', '2', '60', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('224', '2', '61', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('225', '2', '62', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('226', '4', '45', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('227', '4', '46', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('228', '4', '47', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('229', '4', '48', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('230', '4', '49', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('231', '4', '50', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('232', '4', '51', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('233', '4', '52', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('234', '4', '53', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('235', '4', '54', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('236', '4', '55', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('237', '4', '56', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('238', '4', '57', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('239', '4', '58', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('240', '4', '59', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('241', '4', '60', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('242', '4', '61', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('243', '4', '62', '1', null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_no` varchar(40) NOT NULL COMMENT '账号',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `salt` varchar(11) DEFAULT '' COMMENT '盐值',
  `locked` int(1) NOT NULL DEFAULT '0' COMMENT '锁定标志(1:锁定;0:激活)',
  `organization_id` bigint(20) DEFAULT NULL COMMENT '所属组织机构',
  `user_type` int(1) DEFAULT NULL COMMENT '人员类型(1:经办员;2:管理员;3:系统内置人员;)',
  `name` varchar(40) DEFAULT '' COMMENT '姓名',
  `staff_no` varchar(40) DEFAULT '' COMMENT '工号',
  `position` varchar(64) DEFAULT NULL COMMENT '职位',
  `sex` int(1) DEFAULT '1' COMMENT '性别(0为女 1为男)',
  `age` varchar(40) DEFAULT '' COMMENT '年龄',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `phone` varchar(40) DEFAULT '' COMMENT '电话',
  `mobile` varchar(40) DEFAULT NULL COMMENT '手机',
  `email` varchar(40) DEFAULT '' COMMENT '邮箱',
  `weight` varchar(40) DEFAULT NULL COMMENT '体重',
  `height` varchar(40) DEFAULT NULL COMMENT '身高',
  `nation` varchar(40) DEFAULT NULL COMMENT '民族',
  `identity_card` varchar(64) DEFAULT NULL COMMENT '身份证号',
  `birthday` varchar(40) DEFAULT NULL COMMENT '生日',
  `is_married` int(1) DEFAULT '1' COMMENT '婚姻状况(0为未婚 1为已婚)',
  `address` varchar(200) DEFAULT NULL COMMENT '户口所在地',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `organization_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('4', 'admin', 'YWRtaW4=', '', '1', '4', null, '张三', '001', null, '1', '', '管理员', '', null, '', null, null, null, null, null, '1', null, null, '2016-11-23 16:20:17', null, '2016-12-15 16:34:50', null);
INSERT INTO `sys_user` VALUES ('5', 'user', 'dXNlcg==', '', '1', '5', null, '李四', '002', null, '1', '', '普通用户', '', null, '', null, null, null, null, null, '1', null, null, '2016-11-23 16:21:39', null, '2017-04-06 15:50:59', null);
INSERT INTO `sys_user` VALUES ('6', 'super', 'c3VwZXI=', '', '1', '6', null, '王五', '003', null, '1', '', '超级管理员', '', null, '', null, null, null, null, null, '1', null, null, '2016-12-15 16:16:35', null, '2016-12-20 11:54:11', null);
INSERT INTO `sys_user` VALUES ('7', '2', 'Mg==', '', '1', '1', null, '2', '2', null, '1', '2', '2', '2', null, '2', '2', '2', '2', null, null, '1', '2', null, '2017-04-23 22:17:48', null, '2017-04-23 22:17:48', '合肥运输管处');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '账号',
  `role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色',
  `status_id` char(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '6', '1', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('3', '4', '1', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('5', '4', '2', '1', '2017-04-06 15:50:59', '2017-04-06 15:50:59');
INSERT INTO `sys_user_role` VALUES ('6', '6', '4', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('7', '2', '5', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('8', '5', '1', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('9', '5', '3', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('10', '1', '4', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('11', '7', '1', '1', '2017-04-23 22:17:48', '2017-04-23 22:17:48');

-- ----------------------------
-- Table structure for vehicle_access_fence_record
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_access_fence_record`;
CREATE TABLE `vehicle_access_fence_record` (
  `id` int(11) DEFAULT NULL,
  `fence_id` int(11) DEFAULT NULL COMMENT '围栏id',
  `vehicle_no` varchar(32) DEFAULT NULL COMMENT '车辆号码',
  `position_time` bigint(20) DEFAULT NULL COMMENT '定位时间',
  `longitude` double DEFAULT NULL COMMENT '经度',
  `latitude` double DEFAULT NULL COMMENT '纬度',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单ID',
  `type` int(2) DEFAULT NULL COMMENT '0:出围栏  1：进入围栏'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆进出围栏记录表';

-- ----------------------------
-- Records of vehicle_access_fence_record
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_info
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_info`;
CREATE TABLE `vehicle_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `plate_color` varchar(32) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `brand` varchar(64) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `vehicle_type` varchar(64) DEFAULT NULL,
  `owner_name` varchar(64) DEFAULT NULL,
  `vehicle_color` varchar(32) DEFAULT NULL,
  `engine_id` varchar(32) DEFAULT NULL,
  `vIN` varchar(17) DEFAULT NULL,
  `certify_date_A` int(11) DEFAULT NULL,
  `fuel_type` varchar(32) DEFAULT NULL,
  `engine_displace` varchar(32) DEFAULT NULL,
  `photo_id` varchar(128) DEFAULT NULL,
  `certificate` varchar(64) DEFAULT NULL,
  `trans_agency` varchar(256) DEFAULT NULL,
  `trans_area` varchar(256) DEFAULT NULL,
  `trans_date_start` int(11) DEFAULT NULL,
  `trans_date_stop` int(11) DEFAULT NULL,
  `certify_date_B` int(11) DEFAULT NULL,
  `fix_state` varchar(64) DEFAULT NULL,
  `next_fix_date` int(11) DEFAULT NULL,
  `check_state` varchar(8) DEFAULT NULL,
  `fee_print_id` varchar(32) DEFAULT NULL,
  `gPS_brand` varchar(256) DEFAULT NULL,
  `gPS_model` varchar(64) DEFAULT NULL,
  `gPSIMEI` varchar(128) DEFAULT NULL,
  `gPS_install_date` int(11) DEFAULT NULL,
  `register_date` int(11) DEFAULT NULL,
  `commercial_type` int(11) DEFAULT NULL,
  `fare_type` varchar(16) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车辆基本信息';

-- ----------------------------
-- Records of vehicle_info
-- ----------------------------
INSERT INTO `vehicle_info` VALUES ('1', '1', '340100', '1', '黄', '4', '1', '1', '1', '张三', '蓝', '1', '20365', '8989', '3535', '18', '1', '90', '22', '340100', '89', '77', '35', '33', '33', '1', '1', '1', '1', '1', '20100910', '20100920', '1', '1', '1', '1', '20170430101010');

-- ----------------------------
-- Table structure for vehicle_insurance
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_insurance`;
CREATE TABLE `vehicle_insurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `insur_com` varchar(64) DEFAULT NULL,
  `insur_num` varchar(64) DEFAULT NULL,
  `insur_type` varchar(32) DEFAULT NULL,
  `insur_count` decimal(10,2) DEFAULT NULL,
  `insur_eff` int(11) DEFAULT NULL,
  `insur_exp` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='车辆保险信息';

-- ----------------------------
-- Records of vehicle_insurance
-- ----------------------------
INSERT INTO `vehicle_insurance` VALUES ('1', '1', '300', '太平', '100200043011', '1', '4000.00', '20150320', '20200430', '0', '20170430101010');
INSERT INTO `vehicle_insurance` VALUES ('2', '2', '111', '人寿', '23121', '1', null, null, null, '1', null);

-- ----------------------------
-- Table structure for vehicle_online_rate
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_online_rate`;
CREATE TABLE `vehicle_online_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `company_name` varchar(256) DEFAULT NULL,
  `vehicle_register` int(11) DEFAULT NULL COMMENT '注册车辆数',
  `vehicle_in_operation` int(11) DEFAULT NULL COMMENT '运营中车辆',
  `online` int(11) DEFAULT NULL COMMENT '在线量',
  `empty_amount` int(11) DEFAULT NULL COMMENT '空车量',
  `heavy_amount` int(11) DEFAULT NULL COMMENT '重车量',
  `gather_time` datetime DEFAULT NULL COMMENT '采集时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_online_rate
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_position
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_position`;
CREATE TABLE `vehicle_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `vehicle_region_code` int(11) DEFAULT NULL COMMENT '车辆报备地行政区划代码，地市级，应符合GB/T2260',
  `position_time` bigint(20) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `speed` decimal(3,2) DEFAULT NULL,
  `direction` decimal(3,2) DEFAULT NULL,
  `elevation` decimal(4,2) DEFAULT NULL,
  `mileage` decimal(3,2) DEFAULT NULL,
  `encrypt` int(11) DEFAULT NULL COMMENT '1：GCJ-02 测绘局标准\r\n            2：WGS84 GPS标准\r\n            3：BD-09 百度标准\r\n            4：CGCS2000 北斗标准\r\n            0：其他\r\n            ',
  `warn_status` int(11) DEFAULT NULL COMMENT '参考JT／T808',
  `veh_status` int(11) DEFAULT NULL COMMENT '参考JT／T808',
  `biz_status` int(11) DEFAULT NULL COMMENT '1：载客\r\n            2：接单\r\n            3：空驶\r\n            4：停运\r\n            ',
  `order_id` varchar(64) DEFAULT NULL COMMENT '非营运状态下填“0”',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车辆定位信息';

-- ----------------------------
-- Records of vehicle_position
-- ----------------------------
INSERT INTO `vehicle_position` VALUES ('1', '1', '300', '340100', '20170430', '34', '45', '4.00', '1.00', '1.00', '1.00', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for vehicle_total_mile
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_total_mile`;
CREATE TABLE `vehicle_total_mile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `vehicle_no` varchar(32) DEFAULT NULL,
  `total_mile` varchar(64) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='车辆里程信息';

-- ----------------------------
-- Records of vehicle_total_mile
-- ----------------------------
INSERT INTO `vehicle_total_mile` VALUES ('1', '1', '340100', '300', '9000', '1', '20170430101010');
INSERT INTO `vehicle_total_mile` VALUES ('2', '2', '340100', null, null, '1', null);

-- ----------------------------
-- Table structure for vehicle_track
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_track`;
CREATE TABLE `vehicle_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_name` varchar(64) DEFAULT NULL COMMENT '追踪名称',
  `vehicle_register` int(11) DEFAULT NULL COMMENT '注册车辆数',
  `vehicle_in_operation` int(11) DEFAULT NULL COMMENT '运营中车辆',
  `online` int(11) DEFAULT NULL COMMENT '在线量',
  `empty_amount` int(11) DEFAULT NULL COMMENT '空车量',
  `heavy_amount` int(11) DEFAULT NULL COMMENT '重车量',
  `gather_time` datetime DEFAULT NULL COMMENT '采集时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_track
-- ----------------------------
