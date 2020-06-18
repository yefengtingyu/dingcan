/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : db_dingcan

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2020-06-19 04:45:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'root123');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1393654966130', '凉拌菜', 'no');
INSERT INTO `t_catelog` VALUES ('1393654973698', '热炒菜', 'no');
INSERT INTO `t_catelog` VALUES ('1393654982744', '炖汤类', 'no');
INSERT INTO `t_catelog` VALUES ('1557364773811', '主食', 'yes');
INSERT INTO `t_catelog` VALUES ('1557377951677', '主食', 'no');
INSERT INTO `t_catelog` VALUES ('1592512644005', '川菜', 'no');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` varchar(50) NOT NULL,
  `catelog_id` varchar(50) DEFAULT NULL,
  `bianhao` varchar(500) DEFAULT NULL,
  `mingcheng` varchar(500) DEFAULT NULL,
  `jieshao` varchar(500) DEFAULT NULL,
  `fujian` varchar(500) DEFAULT NULL,
  `shichangjia` int(11) DEFAULT NULL,
  `tejia` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1393655526789', '1393654966130', '0001', '凉拌金针菇', '用剪刀减去金针菇的根蒂部分，再反复冲洗干净。较长的金针菇可以从中间剪开，以方便食用；红椒去籽切细锅中加水，加1勺盐，烧开后下入金针菇和红椒丝，煮1分钟，关火。', '/upload/1393655525402.jpg', '10', '8', 'no');
INSERT INTO `t_goods` VALUES ('1393655887280', '1393654982744', '0002', '三鲜豆腐羹', '豆腐洗净，切成小丁，切豆腐的时候可以从后往前切，切的同时可以用手压住，这样豆腐就不会总粘在刀上了大虾只取虾仁，并用小刀在虾背上划开，取出虾线，这样处理后做好的虾会更像虾球', '/upload/1393655885962.jpg', '15', '10', 'no');
INSERT INTO `t_goods` VALUES ('1393655949576', '1393654982744', '0003', '冬瓜薏仁鲫鱼汤', '薏米仁洗净后放水中浸泡一个小时，枸杞洗净备用。冬瓜去皮切成块儿。鲫鱼去除内脏洗净备用开锅后放入葱段和姜片，倒入少许料酒，改文火慢炖50分钟', '/upload/1393655948031.jpg', '13', '10', 'no');
INSERT INTO `t_goods` VALUES ('1393656014209', '1393654973698', '0004', '糖醋排骨', '将排骨剁成长约5厘米的段，然后洗干净放入锅中加上水没过排将锅烧开，然后用勺子将上面的浮沫撇干净，可以用大火烧开浮沫都飘起来，这样很容易将浮沫撇的很干放入拍松的生姜块，再加上八角、花椒、料酒、大葱一起煮，小火盖上锅盖煮40分钟，排骨熟', '/upload/1393656012959.jpg', '18', '10', 'no');
INSERT INTO `t_goods` VALUES ('1557378011693', '1557377951677', '0005', '面条', '&nbsp;面条', '/upload/1557378003614.jpg', '8', '8', 'no');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `neirong` varchar(200) DEFAULT NULL,
  `liuyanshi` varchar(2000) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `huifu` varchar(50) DEFAULT NULL,
  `huifushi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('1', '东西很好', '2019-05-09 09:51', '1557233203613', '谢谢', '2019-05-09 09:52');
INSERT INTO `t_liuyan` VALUES ('2', '好吃吗', '2019-05-09 12:58', '1557377860586', '那我快买', '2020-06-19 03:09');
INSERT INTO `t_liuyan` VALUES ('3', '这个鱼看起来真的很香！', '2020-06-19 04:42', '1000000000001', '那你来我店里吃或者下单外卖都可以的', '2020-06-19 04:43');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` varchar(200) NOT NULL,
  `bianhao` varchar(200) DEFAULT NULL,
  `shijian` varchar(200) DEFAULT NULL,
  `zhuangtai` varchar(200) DEFAULT NULL,
  `huifu` varchar(255) DEFAULT NULL,
  `songhuodizhi` varchar(200) DEFAULT NULL,
  `fukuanfangshi` varchar(200) DEFAULT NULL,
  `jine` int(11) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1557364691852', '20190509091811', '2019-05-09 09:18:11', 'yes', '', '教学楼', '货到付款', '100', '1557233203613');
INSERT INTO `t_order` VALUES ('1557377886145', '20190509125806', '2019-05-09 12:58:06', 'yes', '', '教学楼', '货到付款', '100', '1557377860586');
INSERT INTO `t_order` VALUES ('1592504422253', '20200619022022', '2020-06-19 02:20:22', 'yes', '', '武汉晴川学院宿舍楼', '货到付款', '678', '1000000000002');
INSERT INTO `t_order` VALUES ('1592512539987', '20200619043539', '2020-06-19 04:35:39', 'yes', '', '武汉晴川学院宿舍楼', '货到付款', '32', '1000000000002');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `id` varchar(200) NOT NULL,
  `order_id` varchar(200) DEFAULT NULL,
  `goods_id` varchar(50) DEFAULT NULL,
  `goods_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('1393657633435', '1393657633280', '1393655303399', '1');
INSERT INTO `t_orderitem` VALUES ('1393657943847', '1393657943777', '1393655887280', '1');
INSERT INTO `t_orderitem` VALUES ('1393658063119', '1393658063033', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1393658148327', '1393658147936', '1393655887280', '1');
INSERT INTO `t_orderitem` VALUES ('1393658173125', '1393658172985', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1393658262440', '1393658262399', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1393658284297', '1393658284160', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1395033001797', '1395033001698', '1393655171464', '1');
INSERT INTO `t_orderitem` VALUES ('1395033002062', '1395033001698', '1393655526789', '1');
INSERT INTO `t_orderitem` VALUES ('1557364691883', '1557364691852', '1393656014209', '1');
INSERT INTO `t_orderitem` VALUES ('1557377886193', '1557377886145', '1393656014209', '1');
INSERT INTO `t_orderitem` VALUES ('1592504422263', '1592504422253', '1557378011693', '1');
INSERT INTO `t_orderitem` VALUES ('1592504422269', '1592504422253', '1393656014209', '67');
INSERT INTO `t_orderitem` VALUES ('1592512539995', '1592512539987', '1557378011693', '4');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(50) NOT NULL,
  `loginname` varchar(50) DEFAULT NULL,
  `loginpw` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  `studentid` varchar(50) DEFAULT NULL,
  `stuhost` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1349561912257', 'abcde', '123', 'one', 'no', '1234', '234');
INSERT INTO `t_user` VALUES ('1557233203613', 'liuyang', '123', '刘洋', 'no', '2345', '345');
INSERT INTO `t_user` VALUES ('1557364532828', 'zhangsan', '123', '张三', 'no', '3456', '456');
INSERT INTO `t_user` VALUES ('1557367668244', 'wangwu', '123', '王五', 'no', '4567', '567');
INSERT INTO `t_user` VALUES ('1557377860586', 'lisi', '123456', '李四', 'no', '5678', '678');
INSERT INTO `t_user` VALUES ('1558339889084', 'zhangmazi', '123456', '张麻子', 'no', '123456', '234');
INSERT INTO `t_user` VALUES ('1000000000001', '20170402084', '123', '王文豪', 'no', '6789', '123');
INSERT INTO `t_user` VALUES ('1000000000002', '20170402092', '123', '杨孟尧', 'no', '3412341', '100');
INSERT INTO `t_user` VALUES ('1000000000003', '20170402093', '123', '李凌杰', 'no', '3413341', '45234');
INSERT INTO `t_user` VALUES ('1000000000004', '20170402104', '123', '邬浩然', 'no', '234234', '3254');

-- ----------------------------
-- Table structure for `t_xinyong`
-- ----------------------------
DROP TABLE IF EXISTS `t_xinyong`;
CREATE TABLE `t_xinyong` (
  `id` varchar(50) NOT NULL,
  `shuxing` varchar(50) DEFAULT NULL,
  `neirong` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_xinyong
-- ----------------------------
INSERT INTO `t_xinyong` VALUES ('1557364748348', '好评', '好评', '2019-05-09 09:19', '1557233203613');
