/*
Navicat MySQL Data Transfer

Source Server         : yusheng
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : shengyu_en

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2019-01-23 09:21:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '0', '1', '20', 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `cmf_admin_menu` VALUES ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES ('5', '2', '1', '0', '10000', 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES ('6', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES ('7', '6', '1', '1', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES ('8', '7', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('9', '7', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('10', '7', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('11', '7', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('12', '7', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('13', '7', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES ('14', '7', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('15', '6', '1', '1', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES ('16', '15', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('17', '15', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES ('18', '15', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES ('19', '15', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES ('20', '6', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES ('21', '20', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES ('22', '20', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES ('23', '20', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('24', '20', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES ('25', '20', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('26', '20', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES ('27', '20', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('28', '20', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES ('29', '6', '1', '1', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES ('30', '29', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES ('31', '29', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('32', '29', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES ('33', '29', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('34', '29', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES ('35', '29', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('36', '35', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('37', '35', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('38', '35', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('39', '35', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('40', '35', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('41', '35', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('42', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES ('43', '42', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES ('44', '42', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES ('45', '42', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('46', '42', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES ('47', '42', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES ('48', '42', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES ('49', '110', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES ('50', '49', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES ('51', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES ('52', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('53', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES ('54', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('55', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES ('56', '50', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES ('57', '50', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES ('58', '0', '1', '0', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES ('59', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES ('60', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES ('61', '6', '1', '1', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES ('62', '61', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES ('63', '61', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES ('64', '61', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES ('65', '61', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('66', '61', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES ('67', '61', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES ('68', '61', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES ('69', '61', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES ('70', '61', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES ('71', '6', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES ('72', '71', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('73', '6', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES ('74', '73', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('75', '6', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES ('76', '75', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('77', '6', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES ('78', '6', '1', '1', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES ('79', '78', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('80', '78', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('81', '78', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('82', '78', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('83', '78', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('84', '78', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES ('85', '84', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES ('86', '84', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('87', '84', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES ('88', '84', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('89', '84', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES ('90', '84', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('91', '84', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES ('92', '84', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES ('93', '6', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES ('94', '93', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('95', '6', '1', '1', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES ('96', '95', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES ('97', '95', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES ('98', '95', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES ('99', '95', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES ('100', '95', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('101', '95', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('102', '95', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES ('103', '95', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES ('104', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES ('105', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('106', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES ('107', '95', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('108', '95', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES ('109', '95', '1', '0', '10000', 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计');
INSERT INTO `cmf_admin_menu` VALUES ('110', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES ('111', '49', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES ('112', '111', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES ('113', '111', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('114', '111', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES ('115', '111', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('116', '111', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES ('117', '111', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('118', '111', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES ('119', '111', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('120', '111', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('121', '0', '0', '1', '30', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES ('122', '121', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES ('123', '122', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES ('124', '122', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('125', '122', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES ('126', '122', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('127', '122', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES ('128', '122', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES ('129', '122', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES ('130', '122', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES ('131', '122', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES ('132', '121', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES ('133', '132', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('134', '132', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('135', '132', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('136', '132', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('137', '132', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES ('138', '132', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES ('139', '132', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('140', '121', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES ('141', '140', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES ('142', '140', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('143', '140', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES ('144', '140', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('145', '140', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES ('146', '121', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('147', '146', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('148', '146', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES ('149', '146', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES ('150', '146', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('151', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES ('152', '151', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES ('153', '110', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES ('154', '153', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES ('155', '154', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES ('156', '154', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES ('157', '153', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `cmf_admin_menu` VALUES ('158', '157', '2', '0', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `cmf_admin_menu` VALUES ('159', '6', '1', '1', '10000', 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES ('160', '159', '1', '0', '10000', 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('161', '159', '2', '0', '10000', 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES ('162', '159', '1', '0', '10000', 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('163', '1', '1', '1', '10000', 'plugin/Demo', 'AdminIndex', 'index', '', '演示插件', '', '演示插件');
INSERT INTO `cmf_admin_menu` VALUES ('164', '163', '1', '0', '10000', 'plugin/Demo', 'AdminIndex', 'setting', '', '演示插件设置', '', '演示插件设置');

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
INSERT INTO `cmf_asset` VALUES ('1', '1', '1650639', '1545034788', '1', '0', '168761a1de234db7d47d7b647b5908c5667b49b327d431974e17c4ddf8c44016', 'banner.jpg', 'admin/20181217/bed9d8b0548482a2a42db136af5fd900.jpg', '168761a1de234db7d47d7b647b5908c5', '6bed6e8e753f6cedc90af912c942af9432aaec3a', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('2', '1', '937129', '1545038493', '1', '0', '08c22edd0a5eea0b05849b89ba4b92014a3c8ed513b48eb3e558dcf315878c82', 'nybanner.jpg', 'portal/20181217/d596285f62f95250e1590caaf822154f.jpg', '08c22edd0a5eea0b05849b89ba4b9201', 'a93254c935532d1cd97ab2ff7109ca16ba841bb8', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('3', '1', '319924', '1545095980', '1', '0', '1a41d785a19230dc23659ed495780854001e05b0e3f92b4a460bbcebde0d0637', 'about_01.jpg', 'portal/20181218/8ea9a8c9facdf59f19b9885ceba0500a.jpg', '1a41d785a19230dc23659ed495780854', 'f57debf5a72046f7db59d29eadc04998ef2f9ddc', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('4', '1', '511344', '1545096312', '1', '0', 'd10bf69b4ec9cc4d3ef292f0ec2c4402502583f37116563842fc4d82f9f77154', 'p_01.jpg', 'portal/20181218/2df40ab5da58f03212b734bca7a05041.jpg', 'd10bf69b4ec9cc4d3ef292f0ec2c4402', '7fb611433f60977fcb2331868fafb44aebb58726', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('5', '1', '429281', '1545096372', '1', '0', 'cd19a60b8988e1b42f9a5ce65bd6d04bd266e17f2d9bd123c37474436914fd46', 'p_02.jpg', 'portal/20181218/18803de5ee262d8ed7c0dfac47cab85c.jpg', 'cd19a60b8988e1b42f9a5ce65bd6d04b', 'bdc4ed122e40d36047b2ce05f529918e9499eb35', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('6', '1', '763643', '1545096414', '1', '0', '0c6f3af7520383c0e4e3e68722d196681f492338569f58008b1f2dcafdfb02dd', 'p_03.jpg', 'portal/20181218/5f80a846ccd2c5c60667bccc65e86aab.jpg', '0c6f3af7520383c0e4e3e68722d19668', '1c9c37adf8917a32c82a315e1679bc0eb5f1520f', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('7', '1', '554890', '1545096473', '1', '0', 'a26734b2e4a71603c0b4e8185d9dd5bb8b5a9446ab7829b9fd7e5283bf815874', 'p_04.jpg', 'portal/20181218/a78cfd233365b579e22886f5f573e6f8.jpg', 'a26734b2e4a71603c0b4e8185d9dd5bb', '37712b5c3fd51ef24bf30c0cddae2d1e7bacacf1', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('8', '1', '352695', '1545096508', '1', '0', '3820d36bb209514427c81ef2cfa4511db02b54854e2993c300843cd5f707f9b4', 'p_05.jpg', 'portal/20181218/dd77e9452a4a441197bfe4724c89c346.jpg', '3820d36bb209514427c81ef2cfa4511d', '35f70cd465d45faaef2a643247efc6d4ee88233d', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('9', '1', '31596', '1545096722', '1', '0', '25b50111905c1461327fd90a86af19e2fdc3d3141be928042940edf7e304ba7e', 'news_01.jpg', 'portal/20181218/bc299b98e032f30b708b5503778b8c7a.jpg', '25b50111905c1461327fd90a86af19e2', 'd86219af821e9fe0e211021c70b960f912bf245f', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('10', '1', '41125', '1545096742', '1', '0', 'e7a3f41eee1ebb97448617f6c49862d5c9141edfa53f9d15fb40dfd709712a7e', 'news_02.jpg', 'portal/20181218/d225b16e5fc38d6b40536e07a6d996bf.jpg', 'e7a3f41eee1ebb97448617f6c49862d5', '9ba652360e10511d62445a470b2627ae8e5866f7', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('11', '1', '38449', '1545096785', '1', '0', '27633da8c71deb3c84b573cc69ccdcb7d334b67ac451f3c882f87cb2e06e3a34', 'news_03.jpg', 'portal/20181218/63cfef32f78cb96cbd7f9f9c0b1a03bf.jpg', '27633da8c71deb3c84b573cc69ccdcb7', '2b32b9ab56a5dddbf3e2fb40726908b1b4eb5b6a', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('12', '1', '59840', '1545096958', '1', '0', '53bb61cc8416ca92a36a2de75448aa2f85048f58b925eac1c58867b9a19d1d99', 'newslist_01.jpg', 'portal/20181218/5f7a8ded25906f4523311ee1bee2bbf3.jpg', '53bb61cc8416ca92a36a2de75448aa2f', 'a690ad718bbfb14105df1840f2f97fc95f6841ec', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('13', '1', '16817', '1545097255', '1', '0', '2f57871679528cc298394808f006d8a4163a94cb4a95cdc1495cb26d6c77b1ec', 'newslist_02.jpg', 'portal/20181218/deca8a5545a041ecced1bb64e0d0b489.jpg', '2f57871679528cc298394808f006d8a4', 'ce0da1b62e4d5344c205ced7dc7a79fd9fdb4015', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('14', '1', '36458', '1545097469', '1', '0', 'bf73706f48a2ef8f18ff8a362cd151506ff2d0a618c7f073e71308b81e65c2f8', 'newslist_03.jpg', 'portal/20181218/41b54f78353a52780fade94bea76d9bb.jpg', 'bf73706f48a2ef8f18ff8a362cd15150', '3bf2cf559df4d1211daad4ba984c3d14b23151fb', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('15', '1', '29539', '1545097585', '1', '0', 'c76ad5616f657bc3b703e8aa7ba41612fba4e9176b17659b3dc76a2acb9cd5a3', 'newslist_04.jpg', 'portal/20181218/9c6ceb8e09227cc47b71c793c88f15e4.jpg', 'c76ad5616f657bc3b703e8aa7ba41612', '6b57162dde41d141e947c2bfa22ca43f84c2da38', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('16', '1', '65270', '1545097699', '1', '0', '22f75eae1b42b33df160adb506fde9e8ba58ca2fb5c1069797ea12846699620e', 'ab_01.jpg', 'portal/20181218/3f7c3526a21467235a211de5101610fb.jpg', '22f75eae1b42b33df160adb506fde9e8', 'd5030dce4d0f2db877f015fb4f1cf27d362af0fc', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('17', '1', '60726', '1545097733', '1', '0', 'be45170494a0b48202c336c040c9fa47a2984a2ee9651261c48e51e5264e180d', 'ab_03.jpg', 'portal/20181218/b0e54f582f5390e492e8ef5649047191.jpg', 'be45170494a0b48202c336c040c9fa47', 'ecc0f055b9b40202bf32d2baf413c26077e42189', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('18', '1', '65677', '1545097768', '1', '0', 'a00703e9e74733c9b8b09910a226d3710725e15809d7045b94b167b45518e945', 'ab_02.jpg', 'portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg', 'a00703e9e74733c9b8b09910a226d371', '4bbb22e16147993b0b79074f71e81e9c458e81a2', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('19', '1', '82886', '1545097795', '1', '0', '5c3c8f2999c2c1fefc4064602c6d93d783846292740844954e3fbcad9edd757b', 'ab_04.jpg', 'portal/20181218/f5f44f03c70c1ba986fc834671654c76.jpg', '5c3c8f2999c2c1fefc4064602c6d93d7', '012866c89f3789079f9b74d3d1addae58885a7c3', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('20', '1', '41212', '1545098924', '1', '0', 'ff4f2441e6a5db20658ab551f61ec978bce99b17840933bc408ff0a29114168e', 'ho_01.jpg', 'portal/20181218/8334a9982c5251b1aeddfd7b50f452ea.jpg', 'ff4f2441e6a5db20658ab551f61ec978', 'f24f954e75d1b68d76a737fb08938c4549ce9bf9', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('21', '1', '102266', '1545099016', '1', '0', 'b029d98ea405d24a327bed7a6ca28c3b4fe9a91a88e4ba63cd71253170f949ef', 'ho_01_big.jpg', 'portal/20181218/088ee296424b9bca0317fae842136387.jpg', 'b029d98ea405d24a327bed7a6ca28c3b', 'bd6cf627ea62ba4cbeb129cd40d99e65374b3ed4', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('22', '1', '5272', '1545099191', '1', '0', '6136cbba2a9ccb12703fedda3e8c13761a90c317ee0dbca2d61a7dfe26693e46', 'cooperation_01.jpg', 'portal/20181218/6aded12ed3cf13166eb379836f764b64.jpg', '6136cbba2a9ccb12703fedda3e8c1376', '73bb717b5b86810b666ddb928ad135a583b9d17e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('23', '1', '6703', '1545099249', '1', '0', '6c48ff475e72560105f9eaf92e554eeb3a2b32d8ed6e25f56fa43f16120e3286', 'cooperation_02.jpg', 'portal/20181218/65a0be3b3d42a6f794ebe6fa11d00e34.jpg', '6c48ff475e72560105f9eaf92e554eeb', '82335a95319ff836108ff1f934b864eb875211b7', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('24', '1', '3279', '1545099281', '1', '0', 'c03fdaa46d0535f43e8bbb811088a687331134665be7d158083f9ce13241bfce', 'cooperation_03.jpg', 'portal/20181218/770b6456997c8e09e10392d842bfdc69.jpg', 'c03fdaa46d0535f43e8bbb811088a687', '90b22d24d278e3946f758f9f68c8f8058de5d53e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('25', '1', '6993', '1545099335', '1', '0', 'a105f2f57ad39cdc55cd17bfe18edc9f28882c0e35ea0fd0381efb5d1e58fa29', 'cooperation_04.jpg', 'portal/20181218/7b7912c65cfeb36ebe35d58b052111e3.jpg', 'a105f2f57ad39cdc55cd17bfe18edc9f', '248a12a930f079096f673ea027ffd43930c0d939', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('26', '1', '10420', '1545100040', '1', '0', '6ec11386f52313c0891c05662ff50e1c0e9cec411b0135e421cfd45a0df3ff4a', 'erweima.jpg', 'portal/20181218/e4b469f48067bf49d936b0e15c36cc67.jpg', '6ec11386f52313c0891c05662ff50e1c', 'd2eaa91d68c794d6e5cdc476a047eaf1f9b2c315', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('27', '1', '2365', '1545100069', '1', '0', 'c09c90e5be3caf0ee63fcc9021822e2836d0f527971c6c3c71e9dbc160e5ff12', 'phone.png', 'portal/20181218/c4200565d3fa6986b5063ae9134caaa7.png', 'c09c90e5be3caf0ee63fcc9021822e28', 'c6556d6669b690c6a8c0642db89210481ec3a461', 'png', null);
INSERT INTO `cmf_asset` VALUES ('28', '1', '4623', '1545100237', '1', '0', '6c8933cb27dd7e70baed095a6fc482bf3092c6496f9833770fa95219b27907be', 'contact_01.png', 'portal/20181218/d46a307b731eadd90ca25556749b19cc.png', '6c8933cb27dd7e70baed095a6fc482bf', '4fe149fe048b9a3df7d11a731afd29d298d982e1', 'png', null);
INSERT INTO `cmf_asset` VALUES ('29', '1', '4858', '1545100266', '1', '0', '1941f3947e95929fcdafdf56992d136cbdb5bafca5524dafbf55144f86cb5334', 'contact_02.png', 'portal/20181218/4622f4148a3b3c9ffe51b0ad7dab117e.png', '1941f3947e95929fcdafdf56992d136c', '9f48fcb10b6c8667dc7501ba9077649aa5e7c527', 'png', null);
INSERT INTO `cmf_asset` VALUES ('30', '1', '4078', '1545100294', '1', '0', 'b58729b7f642985c649a057566a4e81ce0d7aa9fda2b606c3e57e50f188c19ee', 'contact_03.png', 'portal/20181218/1c3114bad9e65a28c02302027dc6ab0f.png', 'b58729b7f642985c649a057566a4e81c', 'd96c9ea2d5ba318240f0be5b648921dfe802220c', 'png', null);
INSERT INTO `cmf_asset` VALUES ('31', '1', '5761', '1545100333', '1', '0', '852eb59cea5378e3ecdc0be35292dafe5b5469d07e4ae3d447382264ed049eb7', 'contact_04.png', 'portal/20181218/ea191a00de003b39b3505f479b18cef0.png', '852eb59cea5378e3ecdc0be35292dafe', 'ab4c552c684b519ac766f50ff00d2a64bc0d4519', 'png', null);
INSERT INTO `cmf_asset` VALUES ('32', '1', '32743', '1545208770', '1', '0', 'cf21bb539f3455bff32555e0b0d355de86b3428ed4f554b12fc88c0dcfe9833e', 'project_01.jpg', 'portal/20181219/17777da048ec477975ef6ba3d22c4bfb.jpg', 'cf21bb539f3455bff32555e0b0d355de', 'a79506eb116d41e5dc5f1169987af11a742c1f40', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('33', '1', '98066', '1545292478', '1', '0', '8fd565aafc5a0bb867e21bbee74bb07ddbf8f85a0f01e68ffaf03b4acfced1d4', 'projectlist_03.jpg', 'portal/20181220/5e917f54e2fc5430ecdba550677c362c.jpg', '8fd565aafc5a0bb867e21bbee74bb07d', 'f0bc11d4344b44f2ea3c974faf412612b7ff1a66', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('34', '1', '36403', '1545292768', '1', '0', 'b20295677329e70e89bf4bbf5c48096394d11cb6068611f4ad790b3e25b126ce', 'projectlist_02.jpg', 'portal/20181220/c048ad841091555cc65c2f622dd77a66.jpg', 'b20295677329e70e89bf4bbf5c480963', '8bb1bb953c336b4affd769c71028fa57094a3f52', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('35', '1', '49566', '1545292810', '1', '0', '93dd68022a1c8f2ba58b406550ea47ff3c11b7ba36f69b0be7a1ddaeb03e8476', 'projectlist_01.jpg', 'portal/20181220/d2aab98e8240a591be95a90f1b46355b.jpg', '93dd68022a1c8f2ba58b406550ea47ff', 'd5a9d3aed014c78f17693d9ec59151e242601510', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('36', '1', '35236', '1545292845', '1', '0', 'd7eb347f3a30e5763503402358fb254af73418e7e4efe3424c8861a5a494460a', 'projectlist_04.jpg', 'portal/20181220/ccead8adce394909b1568276e24c7bb9.jpg', 'd7eb347f3a30e5763503402358fb254a', '02019c3683976d0bd5cdeac8bad724ac21031dd3', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('37', '1', '34107', '1545292872', '1', '0', '88b32501d288773065403e4d22530e60a69428a0bd308bc7916724fbbff58696', 'projectlist_05.jpg', 'portal/20181220/35071f8f6c0ad1602930a389eef9278b.jpg', '88b32501d288773065403e4d22530e60', 'f4790b85e6cf8046381f754c77da4e137ab7c383', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('38', '1', '42303', '1545292905', '1', '0', 'd2617195974ebf6d42d0d4c08219b2d26568b548328c3a11cb7fde7b90d86e8f', 'projectlist_06.jpg', 'portal/20181220/a851170e0ebf911caa594ddec09d6679.jpg', 'd2617195974ebf6d42d0d4c08219b2d2', '21a858d966936b601afe64e361fc745dd3093836', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('39', '1', '131674', '1545648771', '1', '0', 'bff8763d5359a1c8ad5e294e15ea213513f3d9aebfbda1f12e310d5a45353c90', 'bg.jpg', 'portal/20181224/16498216a55ebb10f9992bf99700eaba.jpg', 'bff8763d5359a1c8ad5e294e15ea2135', '871fc2d50a549891f197bc18cd37b7a916ac2785', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('40', '1', '158247', '1545977926', '1', '0', 'aed20414147616e04fd27f33bada923ba6ec2d4fc49fb15b0b736f3d1aeced4f', '20081081110253_2.jpg', 'portal/20181228/c6ee41a0d0bccc5391dd350b1e868c22.jpg', 'aed20414147616e04fd27f33bada923b', '665cf8acc61c80ceeb872c87169852c5bfcaea74', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('41', '1', '38363', '1546504913', '1', '0', 'cf104f0d2f5f0ae62bc43dd23fe09e0426f03771c4f0256a240567daba0d8fab', 'project_03.jpg', 'portal/20190103/68aa4a3ec21d9b7f3791423097a4d8b6.jpg', 'cf104f0d2f5f0ae62bc43dd23fe09e04', 'b8384bda810cf58c8f0ebbdba0bdf8fc6314e80c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('42', '1', '48616', '1546504943', '1', '0', 'be740c1121fdcc4336553be462164515fe506e8eee8e0b302579a8a80ab2aa98', 'project_04.jpg', 'portal/20190103/7f0f55f39dfb01d47b3dfe821638ea28.jpg', 'be740c1121fdcc4336553be462164515', '4555f0f3efe9132a51c365ab9a5107791a6bf9a6', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('43', '1', '245307', '1546595855', '1', '0', 'cb2b20f1f16ef0b2459145c568db4d171e3fec5437553717481e17af828b6ffa', 'n_03.jpg', 'portal/20190104/e909dcfc0f04965d82e1fc6947ab9506.jpg', 'cb2b20f1f16ef0b2459145c568db4d17', '7e13380691ebfea3a88bbe2a5011854890e5c282', 'jpg', null);

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `cmf_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `cmf_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('118', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('119', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('120', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('121', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('122', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('123', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('124', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('125', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('126', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES ('127', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES ('128', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES ('129', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('130', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('131', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('132', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('133', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('134', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('135', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES ('136', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('137', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('138', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('139', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('140', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('141', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('142', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('143', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('144', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('145', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('146', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('147', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('148', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES ('149', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('150', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('151', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES ('152', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('153', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES ('154', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('155', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES ('156', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('157', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('158', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES ('159', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('160', '1', 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('161', '1', 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('162', '1', 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('163', '1', 'plugin/Demo', 'plugin_url', 'plugin/Demo/AdminIndex/index', '', '演示插件', '');
INSERT INTO `cmf_auth_rule` VALUES ('164', '1', 'plugin/Demo', 'plugin_url', 'plugin/Demo/AdminIndex/setting', '', '演示插件设置', '');

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `cmf_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES ('29', '3', '0', '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES ('30', '2', '0', '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES ('31', '2', '0', '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES ('32', '2', '1', '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES ('33', '3', '0', '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES ('34', '1', '0', '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES ('35', '1', '1', '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `cmf_hook` VALUES ('36', '1', '1', '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `cmf_hook` VALUES ('37', '2', '1', '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `cmf_hook` VALUES ('38', '2', '1', '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `cmf_hook` VALUES ('39', '2', '1', '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `cmf_hook` VALUES ('40', '2', '1', '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `cmf_hook` VALUES ('41', '2', '1', '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `cmf_hook` VALUES ('42', '2', '1', '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `cmf_hook` VALUES ('43', '2', '1', '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `cmf_hook` VALUES ('44', '2', '1', '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `cmf_hook` VALUES ('45', '2', '1', '门户后台文章管理列表界面', 'portal_admin_article_index_view', 'portal', '门户后台文章管理列表界面');
INSERT INTO `cmf_hook` VALUES ('46', '2', '1', '门户后台文章分类管理列表界面', 'portal_admin_category_index_view', 'portal', '门户后台文章分类管理列表界面');
INSERT INTO `cmf_hook` VALUES ('47', '2', '1', '门户后台页面管理列表界面', 'portal_admin_page_index_view', 'portal', '门户后台页面管理列表界面');
INSERT INTO `cmf_hook` VALUES ('48', '2', '1', '门户后台文章标签管理列表界面', 'portal_admin_tag_index_view', 'portal', '门户后台文章标签管理列表界面');
INSERT INTO `cmf_hook` VALUES ('49', '2', '1', '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `cmf_hook` VALUES ('50', '2', '1', '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `cmf_hook` VALUES ('51', '2', '1', '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `cmf_hook` VALUES ('52', '2', '1', '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `cmf_hook` VALUES ('53', '2', '1', '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `cmf_hook` VALUES ('54', '2', '1', '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `cmf_hook` VALUES ('55', '2', '1', '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `cmf_hook` VALUES ('56', '4', '0', '门户后台文章添加编辑界面右侧栏', 'portal_admin_article_edit_view_right_sidebar', 'portal', '门户后台文章添加编辑界面右侧栏');
INSERT INTO `cmf_hook` VALUES ('57', '4', '0', '门户后台文章添加编辑界面主要内容', 'portal_admin_article_edit_view_main', 'portal', '门户后台文章添加编辑界面主要内容');
INSERT INTO `cmf_hook` VALUES ('58', '2', '1', '门户后台文章添加界面', 'portal_admin_article_add_view', 'portal', '门户后台文章添加界面');
INSERT INTO `cmf_hook` VALUES ('59', '2', '1', '门户后台文章编辑界面', 'portal_admin_article_edit_view', 'portal', '门户后台文章编辑界面');
INSERT INTO `cmf_hook` VALUES ('60', '2', '1', '门户后台文章分类添加界面', 'portal_admin_category_add_view', 'portal', '门户后台文章分类添加界面');
INSERT INTO `cmf_hook` VALUES ('61', '2', '1', '门户后台文章分类编辑界面', 'portal_admin_category_edit_view', 'portal', '门户后台文章分类编辑界面');
INSERT INTO `cmf_hook` VALUES ('62', '2', '1', '门户后台页面添加界面', 'portal_admin_page_add_view', 'portal', '门户后台页面添加界面');
INSERT INTO `cmf_hook` VALUES ('63', '2', '1', '门户后台页面编辑界面', 'portal_admin_page_edit_view', 'portal', '门户后台页面编辑界面');
INSERT INTO `cmf_hook` VALUES ('64', '2', '1', '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `cmf_hook` VALUES ('65', '2', '1', '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `cmf_hook` VALUES ('66', '2', '1', '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `cmf_hook` VALUES ('67', '2', '1', '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `cmf_hook` VALUES ('68', '2', '1', '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `cmf_hook` VALUES ('69', '2', '1', '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `cmf_hook` VALUES ('70', '2', '1', '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `cmf_hook` VALUES ('71', '2', '1', '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
INSERT INTO `cmf_hook_plugin` VALUES ('1', '10000', '1', 'footer_start', 'Demo');

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES ('1', '0', '1', '8', 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES ('2', '0', '底部导航', '');

-- ----------------------------
-- Table structure for cmf_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
INSERT INTO `cmf_nav_menu` VALUES ('2', '1', '0', '1', '10000', 'Trust business', '', 'about.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('3', '1', '2', '1', '10000', 'Company Profile', '', 'about.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('4', '1', '2', '1', '10000', 'Organization', '', 'structure', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('5', '1', '2', '1', '10000', 'Honor', '', 'about_honor.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('6', '1', '0', '1', '10000', 'Project ', '', 'project.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('7', '1', '6', '1', '10000', 'Landmark business center', '', 'project_list.html?id=9', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('8', '1', '6', '1', '10000', 'City complex', '', 'project_list.html?id=10', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('9', '1', '6', '1', '10000', 'Featured Commercial Street', '', 'project_list.html?id=11', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('10', '1', '6', '1', '10000', 'Transportation Hub Business Center', '', 'project_list.html?id=12', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('11', '1', '0', '1', '10000', 'News', '', 'news.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('12', '1', '11', '1', '10000', 'company information', '', 'news_list.html?id=13', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('13', '1', '11', '1', '10000', 'Project dynamics', '', 'news_list.html?id=14', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('14', '1', '11', '1', '10000', 'Media reprint', '', 'news_list.html?id=15', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('15', '1', '0', '1', '10000', 'Partner', '', 'cooperation.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('16', '1', '15', '1', '10000', 'Partner', '', 'cooperation.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('17', '1', '15', '1', '10000', 'contact us', '', 'contact.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('18', '1', '15', '1', '10000', 'Recruitment', '', 'join.html', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('19', '1', '2', '1', '10000', '', '', 'about.html', '', '');

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES ('1', '1', 'site_info', '{\"site_name\":\"Shanghai Yusheng\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_icp\":\"\\u4e0a\\u6d77\\u8a89\\u5723\\u6295\\u8d44\\u7ba1\\u7406\\u6709\\u9650\\u516c\\u53f8  Copyright \\u00a9 2014.\\u8a89\\u5723\\u6295\\u8d44 All rights reserved\",\"site_gwa\":\"\\u6280\\u672f\\u652f\\u6301-\\u4e0a\\u6d77\\u5fd7\\u52cb\\u7f51\\u7edc\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}');
INSERT INTO `cmf_option` VALUES ('2', '1', 'admin_dashboard_widgets', '[{\"name\":\"CmfHub\",\"is_system\":1},{\"name\":\"CmfDocuments\",\"is_system\":1},{\"name\":\"MainContributors\",\"is_system\":1},{\"name\":\"Contributors\",\"is_system\":1},{\"name\":\"Custom1\",\"is_system\":1},{\"name\":\"Custom2\",\"is_system\":1},{\"name\":\"Custom3\",\"is_system\":1},{\"name\":\"Custom4\",\"is_system\":1},{\"name\":\"Custom5\",\"is_system\":1}]');
INSERT INTO `cmf_option` VALUES ('3', '1', 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}');
INSERT INTO `cmf_option` VALUES ('4', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES ('5', '1', 'admin_settings', '{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
INSERT INTO `cmf_plugin` VALUES ('1', '1', '1', '1', '0', 'Demo', '插件演示', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', '1.0', '插件演示', '{\"custom_config\":\"0\",\"text\":\"hello,ThinkCMF!\",\"password\":\"\",\"number\":\"1.0\",\"select\":\"1\",\"checkbox\":1,\"radio\":\"1\",\"radio2\":\"1\",\"textarea\":\"\\u8fd9\\u91cc\\u662f\\u4f60\\u8981\\u586b\\u5199\\u7684\\u5185\\u5bb9\",\"date\":\"2017-05-20\",\"datetime\":\"2017-05-20\",\"color\":\"#103633\",\"image\":\"\",\"file\":\"\",\"location\":\"\"}');

-- ----------------------------
-- Table structure for cmf_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of cmf_portal_category
-- ----------------------------
INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '10000', 'News', 'Information Centre', '0-1', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('2', '0', '0', '1', '0', '10000', 'Project', 'Project Show', '0-2', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('3', '0', '0', '1', '0', '10000', 'Trust business ', '', '0-3', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('4', '0', '0', '1', '0', '10000', 'Partner', '', '0-4', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('5', '19', '0', '1', '0', '10000', 'City complex', 'City complex', '0-3-19-5', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/3f7c3526a21467235a211de5101610fb.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('6', '19', '0', '1', '0', '10000', 'Transportation Hub Business Center', 'Transportation Hub Business Center', '0-3-19-6', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/b0e54f582f5390e492e8ef5649047191.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('7', '19', '0', '1', '0', '10000', 'Landmark business center', 'Landmark business center', '0-3-19-7', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/c019a5a2bdebf3213586d7ad5c516538.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('8', '19', '0', '1', '0', '10000', 'Featured Commercial Street', 'Featured Commercial Street', '0-3-19-8', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/f5f44f03c70c1ba986fc834671654c76.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('9', '2', '0', '1', '0', '10000', 'Landmark business center', 'With the further strengthening of the country\'s positioning of “households and non-speculation”, multi-agent supply, rent-and-purchase and other new systems, the apartment market has ushered in an unprecedented development opportunity. Investors with a ke', '0-2-9', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181219\\/17777da048ec477975ef6ba3d22c4bfb.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('10', '2', '0', '1', '0', '10000', 'City complex', 'With the further strengthening of the country\'s positioning of “households and non-speculation”, multi-agent supply, rent-and-purchase and other new systems, the apartment market has ushered in an unprecedented development opportunity. Investors with a ke', '0-2-10', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/c019a5a2bdebf3213586d7ad5c516538.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('11', '2', '0', '1', '0', '10000', 'Featured Commercial Street', 'With the further strengthening of the country\'s positioning of “households and non-speculation”, multi-agent supply, rent-and-purchase and other new systems, the apartment market has ushered in an unprecedented development opportunity. Investors with a ke', '0-2-11', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/b0e54f582f5390e492e8ef5649047191.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('12', '2', '0', '1', '0', '10000', 'Transportation Hub Business Center', 'With the further strengthening of the country\'s positioning of “households and non-speculation”, multi-agent supply, rent-and-purchase and other new systems, the apartment market has ushered in an unprecedented development opportunity. Investors with a ke', '0-2-12', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/f5f44f03c70c1ba986fc834671654c76.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('13', '1', '0', '1', '0', '10000', 'company news', '', '0-1-13', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/8ea9a8c9facdf59f19b9885ceba0500a.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('14', '1', '0', '1', '0', '10000', 'Industry report', '', '0-1-14', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/d225b16e5fc38d6b40536e07a6d996bf.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('15', '1', '0', '1', '0', '10000', 'Media reprint', '', '0-1-15', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/63cfef32f78cb96cbd7f9f9c0b1a03bf.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('16', '4', '0', '1', '0', '10000', 'Partner', '', '0-4-16', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('17', '4', '0', '1', '0', '10000', 'contact us', '', '0-4-17', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('18', '4', '0', '1', '0', '10000', 'Recruitment', '', '0-4-18', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('19', '3', '0', '1', '0', '10000', 'Company Profile', '', '0-3-19', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('20', '3', '0', '1', '0', '10000', 'Organization', '', '0-3-20', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('21', '3', '0', '1', '0', '10000', 'Honor', '', '0-3-21', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('22', '17', '0', '1', '0', '10000', 'contact number', '400-180-8895', '0-4-17-22', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/d46a307b731eadd90ca25556749b19cc.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('23', '17', '0', '1', '0', '10000', 'contact address', '上海市闵行区莘建东路58弄C座1311室', '0-4-17-23', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/4622f4148a3b3c9ffe51b0ad7dab117e.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('24', '17', '0', '1', '0', '10000', 'Company email', '504273640@qq.com', '0-4-17-24', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/1c3114bad9e65a28c02302027dc6ab0f.png\"}');
INSERT INTO `cmf_portal_category` VALUES ('25', '17', '0', '1', '0', '10000', 'company website', 'www.shzhixun.net', '0-4-17-25', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20181218\\/ea191a00de003b39b3505f479b18cef0.png\"}');

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------
INSERT INTO `cmf_portal_category_post` VALUES ('1', '1', '3', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('2', '2', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('3', '3', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('4', '4', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('5', '5', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('6', '6', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('7', '7', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('8', '8', '13', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('9', '9', '13', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('10', '10', '13', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('11', '11', '13', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('12', '12', '21', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('13', '13', '16', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('14', '14', '16', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('15', '15', '16', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('16', '16', '16', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('17', '17', '17', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('18', '18', '18', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('19', '19', '18', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('20', '20', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('21', '21', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('22', '22', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('23', '23', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('24', '24', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('25', '25', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('26', '26', '20', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('27', '27', '10', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('28', '28', '10', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('29', '29', '9', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('30', '30', '13', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('31', '31', '14', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('32', '32', '14', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('33', '33', '11', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('34', '34', '8', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('35', '35', '11', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('36', '36', '15', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('37', '37', '15', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('38', '38', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('39', '39', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('40', '40', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('41', '41', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('42', '42', '2', '10000', '1');

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` longtext COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
INSERT INTO `cmf_portal_post` VALUES ('1', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545038508', '1546504721', '1545038100', '0', '上海誉圣投资管理有限公司', '', '', '', 'portal/20181218/8ea9a8c9facdf59f19b9885ceba0500a.jpg', '&lt;p&gt;上海誉圣投资管理有限公司是由上海淮海（商业）集团(www.huaihai-group.com.cn)与上海荣领投资管理有限公司(www.lm-trust.com) 于2006年共同斥资打造的专业化商业运营公司。公司成立后，先后与绿地集团、万科集团等知名房地产开发商建立起合作伙伴关系，2007年与绿地集团合作打造了绿地第一个商业综合体梅陇镇新都会（MAX-MALL）项目，项目成功运作后，成为绿地在全国开发商业项目的模板，目前在全国已经由近百家的新都会系列项目。2010年，为配合迪斯尼项目落户上海，绿地对综合体项目进行了全面的升级，上海誉圣又与绿地集团共同成功打造川沙东海岸（MAX-MALL2.0）项目，该项目是绿地迄今为止最成功的商业综合体项目。十年来，上海誉圣先后与绿地一部、二部、四部、南京事业部、济南事业部近10个项目进行了合作。2012年，上海誉圣与南通市港闸区政府成立了合资公司成功打造了南通江海风情街一期项目。同时，2013年，上海誉圣又与淮海商业集团成立了上海渥泰投资管理有限公司，全力打造外滩十六铺水岸项目。同年，上海誉圣投资成立南通誉圣房地产开发有限公司，公司原始注册资本2000万，2016年公司注册资本增资至1.2亿元。打造具有南通特色的以“创意”·“文娱”·“体验”为主题的一站式城市综合体——南通北翼玖玖广场。&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/8ea9a8c9facdf59f19b9885ceba0500a.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181217\\/d596285f62f95250e1590caaf822154f.jpg\",\"name\":\"nybanner.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('2', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545096336', '1546504882', '1545191880', '0', '上海淮海中路商业街升级', '', '', '', 'portal/20181219/17777da048ec477975ef6ba3d22c4bfb.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181219\\/17777da048ec477975ef6ba3d22c4bfb.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/2df40ab5da58f03212b734bca7a05041.jpg\",\"name\":\"p_01.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('3', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545096375', '1546504916', '1545191880', '0', '上海闵行梅龙镇新都会', '', '', '', 'portal/20190103/68aa4a3ec21d9b7f3791423097a4d8b6.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190103\\/68aa4a3ec21d9b7f3791423097a4d8b6.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/18803de5ee262d8ed7c0dfac47cab85c.jpg\",\"name\":\"p_02.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('4', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545096417', '1546504946', '1545191880', '0', '上海川沙东海岸', '', '', '', 'portal/20190103/7f0f55f39dfb01d47b3dfe821638ea28.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190103\\/7f0f55f39dfb01d47b3dfe821638ea28.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/5f80a846ccd2c5c60667bccc65e86aab.jpg\",\"name\":\"p_03.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('5', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545096475', '1546504975', '1545191880', '0', '南京紫峰五楼商业', '', '', '', 'portal/20181218/a78cfd233365b579e22886f5f573e6f8.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/a78cfd233365b579e22886f5f573e6f8.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/a78cfd233365b579e22886f5f573e6f8.jpg\",\"name\":\"p_04.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('6', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545096511', '1546504996', '1545191880', '0', '上海十六铺水岸商业', '', '', '', 'portal/20181218/dd77e9452a4a441197bfe4724c89c346.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/dd77e9452a4a441197bfe4724c89c346.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/dd77e9452a4a441197bfe4724c89c346.jpg\",\"name\":\"p_05.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('7', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545096562', '1545806818', '1545191880', '0', '上海十六铺水岸商业', '', '', '', '', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/dd77e9452a4a441197bfe4724c89c346.jpg\",\"name\":\"p_05.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('8', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '1545097170', '1545097170', '1545191507', '0', '副区长陈卓夫检查菜场节日食品供应和食品安全工作', '', '9月30日上午，区委常委、副区长陈卓夫等一行，来到淮海集团下属巨鹿集团蒙西菜市场检查节日食品供应和食品安全工作，淮海集团党委书记、董事长孙忠明陪同检查。', '', 'portal/20181218/5f7a8ded25906f4523311ee1bee2bbf3.jpg', '\n&lt;p&gt;   	9月30日上午，区委常委、副区长陈卓夫等一行，来到淮海集团下属巨鹿集团蒙西菜市场检查节日食品供应和食品安全工作，淮海集团党委书记、董事长孙忠明陪同检查。&lt;/p&gt;\n&lt;p&gt;   	陈卓夫在公益空间检测室、绿色食品、猪肉、水产品、熟食柜台前，认真察看菜场环境，仔细了解食品的产地来源、价格情况，并与前来买菜的市民亲切交谈。在一个个摊位前，陈卓夫向经营户详细了解了摊位租金、进货渠道以及收入等情况，对他们节日期间保证供应表示感谢。&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;/themes/simpleboot3/public/assets/images/newsdetails_01.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;   	陈卓夫尤其关心菜市场的食品安全保障措施，特地驻足公益空间察看食品安全检测工作，检测了菜市场食品安全全流程追溯系统运行情况，并对菜市场应对近期在国内发现的非洲猪瘟工作作了了解，提出要发挥好“公益空间”的作用，切实做好食品安全防范管理，排除食品安全风险隐患，他同时还指出当前要从生产、流通、价格、安全、环境等各个环节，采取有效措施，确保市场供应充足、食品安全有效受控、价格基本稳定。&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/5f7a8ded25906f4523311ee1bee2bbf3.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('9', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545097404', '1545097404', '1545191686', '0', '副区长陈卓夫检查菜场节日食品供应和食品安全工作', '', '9月30日上午，区委常委、副区长陈卓夫等一行，来到淮海集团下属巨鹿集团蒙西菜市场检查节日食品供应和食品安全工作，淮海集团党委书记、董事长孙忠明陪同检查。', '', 'portal/20181218/deca8a5545a041ecced1bb64e0d0b489.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/deca8a5545a041ecced1bb64e0d0b489.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('10', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545097521', '1545097521', '1545191686', '0', '副区长陈卓夫检查菜场节日食品供应和食品安全工作', '', '9月30日上午，区委常委、副区长陈卓夫等一行，来到淮海集团下属巨鹿集团蒙西菜市场检查节日食品供应和食品安全工作，淮海集团党委书记、董事长孙忠明陪同检查。', '', 'portal/20181218/41b54f78353a52780fade94bea76d9bb.jpg', '', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/41b54f78353a52780fade94bea76d9bb.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('11', '0', '1', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1545097632', '1545876539', '1545191640', '0', '副区长陈卓夫检查菜场节日食品供应和食品安全工作11', '', '9月30日上午，区委常委、副区长陈卓夫等一行，来到淮海集团下属巨鹿集团蒙西菜市场检查节日食品供应和食品安全工作，淮海集团党委书记、董事长孙忠明陪同检查。', '', 'portal/20181218/9c6ceb8e09227cc47b71c793c88f15e4.jpg', '', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/9c6ceb8e09227cc47b71c793c88f15e4.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('12', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545099068', '1546504805', '1545220800', '0', '荣誉证书1', '', '', '', 'portal/20181218/8334a9982c5251b1aeddfd7b50f452ea.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/8334a9982c5251b1aeddfd7b50f452ea.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/088ee296424b9bca0317fae842136387.jpg\",\"name\":\"ho_01_big.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('13', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545099195', '1545099195', '1545220142', '0', '上海淮海商业（集团）有限公司', '', ' 上海淮海商业（集团）有限公司成立于一九九六年六月，是从事商业国有资产经营管理、国内贸易和实业投资的现代商贸企业集团。集团业务主要涉及商业管理、食品流通、餐饮和服务等行业。近年来，集团以“立足淮海路，创新淮海路；走出淮海路，传播淮海路”为发展理念。在淮海路商业结构调整中传承提升自有品牌，积极引进国际名牌概念店、主题店，形成以高端体验消费为特征的精品商业地标形象，实现商业街形态业态互为依托的品牌价值；并在向外拓展中，致力于传承和传播淮海路的经营理念和商业文化，助推“淮海”品牌价值的提升。', '', 'portal/20181218/6aded12ed3cf13166eb379836f764b64.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/6aded12ed3cf13166eb379836f764b64.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('14', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545099251', '1545099251', '1545220142', '0', '洲际酒店集团', '', ' 洲际酒店集团致力于为每一位宾客提供充满真情实意的热情款待。当您在全球任意一家洲际酒店集团旗下酒店下榻时，您都将感受到我们诚挚的欢迎和重视。这是因为，我们发自内心地关注我们所服务的宾客和社区，以提供卓越的高品质服务为荣耀。', '', 'portal/20181218/65a0be3b3d42a6f794ebe6fa11d00e34.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/65a0be3b3d42a6f794ebe6fa11d00e34.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('15', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545099299', '1545099299', '1545220142', '0', 'WeWork', '', ' 在Wework，我们致力于构建全球办公空间网络，助力不同公司共同成长。我们将冰冷的建筑转化为充满创造力、专注且富有协作精神的活力环境。这里不仅是绝佳的工作、思考的场所，更是向全新生活方式的一种转变。我们深信，选择来到这里的首席执行官们将相互帮助、办公室可以像家一样舒适。而当我们找到了工作的真正意义，每一个周一都将无比值得期待。', '', 'portal/20181218/770b6456997c8e09e10392d842bfdc69.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/770b6456997c8e09e10392d842bfdc69.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('16', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545099359', '1545099359', '1545220142', '0', '绿地控股集团股份有限公司', '', ' 绿地控股集团股份有限公司（简称为“绿地”或“绿地集团”）是一家全球经营的多元化企业集团，创立于 1992 年，总部设立于中国上海，在中国 A 股实现整体上市（600606.SH），并控股多家香港上市公司。', '', 'portal/20181218/7b7912c65cfeb36ebe35d58b052111e3.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/7b7912c65cfeb36ebe35d58b052111e3.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('17', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545100156', '1545100156', '1545099978', '0', '联系我们', '', '', '', '', '', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/e4b469f48067bf49d936b0e15c36cc67.jpg\",\"name\":\"erweima.jpg\"},{\"url\":\"portal\\/20181218\\/c4200565d3fa6986b5063ae9134caaa7.png\",\"name\":\"phone.png\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('18', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545287004', '1545290321', '1545287700', '0', '招商主管', '本科/2', '简历投递邮箱：#hr1@lm-trust.com#应聘电话：#0431-86938006', '', '', '\n&lt;p&gt;岗位职责#&lt;/p&gt;\n&lt;p&gt;1、本科以上学历；男女不限，身体健康，相貌端正；&lt;/p&gt;\n&lt;p&gt;2、有一年以上大中型企业中层管理经验，具有新闻传媒学工作经验优先；&lt;/p&gt;\n&lt;p&gt;3、人品善良，性格开朗、直率；责任心、事业心强，能承受工作压力，团队协作能力佳；&lt;/p&gt;\n&lt;p&gt;4、具备良好的沟通协调能力，公文写作功底扎实；&lt;/p&gt;\n&lt;p&gt;#岗位要求#&lt;/p&gt;\n&lt;p&gt;1. 负责与各部门总监或经理的信息沟通，并及时反馈公司的重要信息；&lt;/p&gt;\n&lt;p&gt;2. 安排公司的行政例会、紧急会议、重大研讨、决议性会议，并确定每次会议的中心内容，且对每次例会内容整理已备及时提供给总经理。&lt;/p&gt;\n&lt;p&gt;3. 根据执行董事的日常的时间安排，制定成《执行董事日常工作时刻表》。&lt;/p&gt;\n&lt;p&gt;4. 按照执行董事的意图，起草以公司名义上报或下发的重要文件、报告、方案等。&lt;/p&gt;\n&lt;p&gt;5. 负责重大活动的组织协调与指导、宣导、培训。&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('19', '0', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '1545287140', '1545290280', '1545287700', '0', '总裁助理/总经理助理', '本科/2', '应聘电话：#0431-86938006#\r\n简历投递邮箱：#hr1@lm-trust.com', '', '', '\n&lt;p&gt;岗位职责#&lt;/p&gt;\n&lt;p&gt;1、本科以上学历；男女不限，身体健康，相貌端正；&lt;/p&gt;\n&lt;p&gt;2、有一年以上大中型企业中层管理经验，具有新闻传媒学工作经验优先；&lt;/p&gt;\n&lt;p&gt;3、人品善良，性格开朗、直率；责任心、事业心强，能承受工作压力，团队协作能力佳；&lt;/p&gt;\n&lt;p&gt;4、具备良好的沟通协调能力，公文写作功底扎实；&lt;/p&gt;\n&lt;p&gt;#岗位要求#&lt;/p&gt;\n&lt;p&gt;1. 负责与各部门总监或经理的信息沟通，并及时反馈公司的重要信息；&lt;/p&gt;\n&lt;p&gt;2. 安排公司的行政例会、紧急会议、重大研讨、决议性会议，并确定每次会议的中心内容，且对每次例会内容整理已备及时提供给总经理。&lt;/p&gt;\n&lt;p&gt;3. 根据执行董事的日常的时间安排，制定成《执行董事日常工作时刻表》。&lt;/p&gt;\n&lt;p&gt;4. 按照执行董事的意图，起草以公司名义上报或下发的重要文件、报告、方案等。&lt;/p&gt;\n&lt;p&gt;5. 负责重大活动的组织协调与指导、宣导、培训。&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('20', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545292697', '1545296617', '1545292920', '0', '地标商业项目001', '', '这里是相关的项目简介可以巴拉巴拉巴拉卡巴拉拉巴拉巴拉卡巴拉', '', 'portal/20181220/5e917f54e2fc5430ecdba550677c362c.jpg', '\n&lt;p&gt;   &lt;img src=&quot;/themes/simpleboot3/public/assets/images/projectdetails_01.jpg&quot;&gt;&lt;img src=&quot;/themes/simpleboot3/public/assets/images/projectdetails_02.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;十六铺水岸商业中心是由由上海淮海商业（集团）有限公司委托上海渥泰投资管理有限公司（上海誉圣子公司）运营管理。该商业中心总面积：约17000平方米，属于半露天式餐饮娱乐中心。&lt;/p&gt;\n&lt;p&gt;是一个结合了娱乐、餐饮、休闲于一体的旅游观光综合体，各类商业配置一应俱全。这里有四大娱乐版块，科技、情怀、潮流各类主题体验馆，有别具一格的保龄球酒吧，有人气颇高的密室逃脱，有带你穿越时空回到老上海的时光弄堂，有上海展馆类排名前列的上海外滩星空艺术馆，有来自世界各地的特色餐饮。&lt;/p&gt;\n&lt;p&gt;十六铺水岸商业中心的餐饮商户主要分为三大类：创意性原创品牌餐厅、连锁型餐厅、小型艺术轻餐饮；在打造原创型创意餐厅的同时，也保证了消费者对于连锁品牌的信任与追求，让每个到访者，都能找到自己满意的餐厅。&lt;/p&gt;\n&lt;p&gt;十六铺毗邻水岸，拥有近700米场的超长亲水平台，是得天独厚的大型活动举办场地，适合各类大型活动，如啤酒节、美食节、艺术节等。十六铺水岸商业中心室内活动场地约3000平方米，户外活动场地约6000平方米，在这里共举办的大小活动数不胜数。&lt;/p&gt;\n&lt;p&gt;地处外滩金融集聚区核心地段，地址：黄浦区中山东二路531号；地下约有800个停车位；交通便利，轨道交通10号线豫园站；9号线小南门站皆可抵达。&lt;/p&gt;\n&lt;p&gt;作为旅游商业中心，十六铺各类节日性活动应接不暇，可谓游玩上海的必去之处！上海外滩第一站——十六铺水岸商业中心，更多精彩等待您！&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181220\\/5e917f54e2fc5430ecdba550677c362c.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('21', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545292787', '1545292787', '1545292946', '0', '地标商业项目001', '', '这里是相关的项目简介可以巴拉巴拉巴拉卡巴拉拉巴拉巴拉卡巴拉', '', 'portal/20181220/c048ad841091555cc65c2f622dd77a66.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181220\\/c048ad841091555cc65c2f622dd77a66.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('22', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545292817', '1545292817', '1545292946', '0', '地标商业项目001', '', '这里是相关的项目简介可以巴拉巴拉巴拉卡巴拉拉巴拉巴拉卡巴拉', '', 'portal/20181220/d2aab98e8240a591be95a90f1b46355b.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181220\\/d2aab98e8240a591be95a90f1b46355b.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('23', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545292852', '1545292852', '1545292946', '0', '地标商业项目001', '', '这里是相关的项目简介可以巴拉巴拉巴拉卡巴拉拉巴拉巴拉卡巴拉', '', 'portal/20181220/ccead8adce394909b1568276e24c7bb9.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181220\\/ccead8adce394909b1568276e24c7bb9.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('24', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545292879', '1545292879', '1545292946', '0', '地标商业项目001', '', '这里是相关的项目简介可以巴拉巴拉巴拉卡巴拉拉巴拉巴拉卡巴拉', '', 'portal/20181220/35071f8f6c0ad1602930a389eef9278b.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181220\\/35071f8f6c0ad1602930a389eef9278b.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('25', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545292909', '1545292909', '1545292946', '0', '地标商业项目001', '', '这里是相关的项目简介可以巴拉巴拉巴拉卡巴拉拉巴拉巴拉卡巴拉', '', 'portal/20181220/a851170e0ebf911caa594ddec09d6679.jpg', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181220\\/a851170e0ebf911caa594ddec09d6679.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('26', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545298112', '1546595059', '1545298020', '0', 'Organizational structure', '', '', '', '', '&lt;p&gt;组织架构1组织架构1组织架构1组织架构1组织架构1组织架构1组织架构1&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('27', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545298493', '1545298493', '1545301174', '0', '城市综合体', '', '城市综合体', '', 'portal/20181218/3f7c3526a21467235a211de5101610fb.jpg', '\n&lt;p&gt;&lt;img src=&quot;portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg&quot; title=&quot;ab_02.jpg&quot; alt=&quot;ab_02.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;城市综合体&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/3f7c3526a21467235a211de5101610fb.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('28', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545301253', '1545301253', '1545301280', '0', '地标商业项目001', '', '城市综合体', '', 'portal/20181218/8ea9a8c9facdf59f19b9885ceba0500a.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/b0e54f582f5390e492e8ef5649047191.jpg&quot; title=&quot;ab_03.jpg&quot; alt=&quot;ab_03.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/8ea9a8c9facdf59f19b9885ceba0500a.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('29', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545303122', '1545306974', '1545303060', '0', '1111', '', '', '', 'portal/20181218/3f7c3526a21467235a211de5101610fb.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/3f7c3526a21467235a211de5101610fb.jpg&quot; title=&quot;ab_01.jpg&quot; alt=&quot;ab_01.jpg&quot;&gt;111111111111111&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/3f7c3526a21467235a211de5101610fb.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20181218\\/c019a5a2bdebf3213586d7ad5c516538.jpg\",\"name\":\"ab_02.jpg\"},{\"url\":\"portal\\/20181218\\/b0e54f582f5390e492e8ef5649047191.jpg\",\"name\":\"ab_03.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('30', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545304086', '1545307430', '1545304020', '0', 'test', '', '', '', 'portal/20181218/3f7c3526a21467235a211de5101610fb.jpg', '\n&lt;p&gt;微软微软&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;portal/20181218/3f7c3526a21467235a211de5101610fb.jpg&quot; title=&quot;ab_01.jpg&quot; alt=&quot;ab_01.jpg&quot;&gt;嗡嗡嗡&lt;/p&gt;\n&lt;p&gt;微软微软 &lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/3f7c3526a21467235a211de5101610fb.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('31', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545307698', '1545307705', '1545307620', '0', 'test11', '', '11111111111111111', '', 'portal/20181218/f5f44f03c70c1ba986fc834671654c76.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/3f7c3526a21467235a211de5101610fb.jpg&quot; title=&quot;ab_01.jpg&quot; alt=&quot;ab_01.jpg&quot;&gt;11111111111&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/f5f44f03c70c1ba986fc834671654c76.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('32', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545308335', '1545308341', '1545308280', '0', 'yyyy2', '', '111111111', '', 'portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg&quot; title=&quot;ab_02.jpg&quot; alt=&quot;ab_02.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/c019a5a2bdebf3213586d7ad5c516538.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('33', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545308598', '1545308625', '1545308520', '0', 'test', '', 'fdsdfdsf', '', 'portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/3f7c3526a21467235a211de5101610fb.jpg&quot; title=&quot;ab_01.jpg&quot; alt=&quot;ab_01.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/c019a5a2bdebf3213586d7ad5c516538.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('34', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545308907', '1545308953', '1545308820', '0', 'test22', '', '22222', '', 'portal/20181218/b0e54f582f5390e492e8ef5649047191.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/3f7c3526a21467235a211de5101610fb.jpg&quot; title=&quot;ab_01.jpg&quot; alt=&quot;ab_01.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/b0e54f582f5390e492e8ef5649047191.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('35', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545309023', '1545309028', '1545308940', '0', 'eerer', '', '', '', 'portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg&quot; title=&quot;ab_02.jpg&quot; alt=&quot;ab_02.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/c019a5a2bdebf3213586d7ad5c516538.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('36', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1545309125', '1545309139', '1545309060', '0', '1111', '', '', '', 'portal/20181218/f5f44f03c70c1ba986fc834671654c76.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/f5f44f03c70c1ba986fc834671654c76.jpg&quot; title=&quot;ab_04.jpg&quot; alt=&quot;ab_04.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181218\\/f5f44f03c70c1ba986fc834671654c76.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('37', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545309175', '1545309175', '1545309152', '0', 'test11', '', '', '', 'admin/20181217/bed9d8b0548482a2a42db136af5fd900.jpg', '&lt;p&gt;&lt;img src=&quot;portal/20181218/c019a5a2bdebf3213586d7ad5c516538.jpg&quot; title=&quot;ab_02.jpg&quot; alt=&quot;ab_02.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"admin\\/20181217\\/bed9d8b0548482a2a42db136af5fd900.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('38', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545810178', '1545810178', '1545810159', '0', '1111', '', '', '', '', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('39', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545810203', '1545810203', '1545810181', '0', '111', '', '', '', '', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('40', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545810326', '1545810326', '1545810309', '0', '1111112', '', '', '', '', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('41', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545810503', '1545810503', '1545810494', '0', '1eewrew', '', '', '', '', null, null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('42', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1545810581', '1545980757', '1545810540', '0', 'fsdfdsf', '', '', '', '', '\n&lt;h2 class=&quot;rich_media_title&quot; id=&quot;activity-name&quot;&gt;百年淮海路的双面回忆：时髦商场和烟火里弄&lt;/h2&gt;\n&lt;p&gt;&lt;span class=&quot;rich_media_meta rich_media_meta_text&quot;&gt;\r\n                                                戚颖璞                                            &lt;/span&gt;\r\n                                        \r\n                                        &lt;span class=&quot;rich_media_meta rich_media_meta_nickname&quot; id=&quot;profileBt&quot;&gt;\r\n                      &lt;a href&gt;\r\n                        解放日报                      &lt;/a&gt;\r\n                      \r\n                    &lt;/span&gt;\r\n\r\n\r\n                    &lt;em id=&quot;publish_time&quot; class=&quot;rich_media_meta rich_media_meta_text&quot;&gt;1周前&lt;/em&gt;\r\n\r\n\r\n\r\n\r\n\r\n                &lt;/p&gt;\n&lt;h2 class=&quot;&quot; style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;letter-spacing: 0.544px; font-size: 17px; line-height: 27.2px; box-sizing: border-box !important; overflow-wrap: break-word !important; visibility: visible !important; width: 660.994px !important; height: auto !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_jpg/wm80Ec5NJpks1t3ONJTMWyOsyNCqp7d9bGGAhibq4LgACbz9whrXl8gVAgmttlO8YbjILhFduRStlfOCdiakuhww/640?wx_fmt=jpeg&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot; width=&quot;100%&quot;&gt;&lt;/h2&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(36, 62, 133);font-size: 15px;&quot;&gt;有人说上海有条路&lt;br&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;一年365天都排队&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_jpg/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3xc5fwl5rXC0FpmJp7Q3EaIY2LEMrDRgkZxE7IfwvEfpZHo8uBDPJqQ/640?wx_fmt=jpeg&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;老人们爱来这排队&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot; __bg_gif&quot; style=&quot;width: 640px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_gif/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3pwlXEBBYic6mUNKEUustnBnZf003JaC1sB5dRWj9LJPa8uCgBxicJgJA/640?wx_fmt=gif&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;“光明邨大酒店”“哈尔滨食品厂”“老大昌”等老字号每天吸引着无数饕客&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;年轻人也爱来排队&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot; __bg_gif&quot; style=&quot;width: 640px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_gif/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3ST6GfEJkvElWnAS9zWVlBGibaXv9IZP9R3nYXdIicPXendtaANosjJzQ/640?wx_fmt=gif&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;入驻的优衣库旗舰店、无印良品旗舰店、LINE FRIENDS、Gentle Monster、“维多利亚的秘密”等国外知名品牌，是时尚的最佳标签。&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;老字号、新品牌&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;在淮海路交织相融，聚集人气&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;殊不知这条时髦、有腔调的繁华道路&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(170, 9, 15);&quot;&gt;已经走过了沧桑一世纪&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;它的繁华剧变和商业升级&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;在改革开放后不断加快&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;它的持久生命力&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;也离不开老百姓的支持&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;跟着解放君来了解它&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;p style=&quot;margin: 10px 8px;text-align: center;box-sizing: border-box;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;/section&gt;&lt;section&gt;&lt;p style=&quot;box-sizing: border-box;&quot;&gt;淮海中路历经五次更名&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;诞生过多个上海“第一”&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;淮海路拥有数百家现代化特色商店，其商业底蕴可追溯至百年前。整条道路长约6公里，分为东、中、西三段。其中，淮海中路的历史积淀最为厚重，它从晚清、民国延续至今，五次易名。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;淮海中路辟筑于1900年。&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;辟筑之初，东段名西江路，西段名宝昌路，后又统称宝昌路。1915年更名为霞飞路；1943年更名泰山路，1945年，又宣布改称“林森中路”；1950年才改名为“淮海中路”。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;路名变换，伴随着业态变化。20世纪初，淮海中路只有一些小型洋货洋酒商铺。从20世纪20年代起，俄侨带动各国商人纷至沓来。到1935年前后，整条路的俄侨商店不下五六百家，还有数十家来自其它国家的商店企业。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3VHeriahM7xZJxylIl9Zlagnt8nWyBmOl1XWic8ibnGIncAiaUibvApHse2g/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3s58sbpRiahVdZh2Eq6kXficeiaEibaeWWPw3ygEO9tUSibrVpw0NT7PKRMg/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;20世纪30年代，俄侨在霞飞路（今淮海路）开设的照相图片馆和咖啡店&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;与此同时，华商在淮海路崛起。山东籍商人凭借通晓俄语、熟谙俄侨习性的优势，成为华商中的主力军。&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;著名的福利面包公司就由山东籍商人创办，这就是今天的哈尔滨食品厂。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3qUkraSLCrdsGFdlAKfBAFyB7erGnSIVKNCky4Gkr3UTjd2fBvPnO7Q/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3xUGb4E2sFZsjBP2c0pDJ67tsb7hqQ2yKZaeEsoA2iaRuvNj3FuBjpQQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;由华商开设的福利面包店，就是今日的哈尔滨食品厂前身&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;受战乱影响，20世纪40年代的淮海路逐渐没落，不复旧日繁华。直至1950年起重获恢复和发展。&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;1956年，全国最早、上海最大的妇女用品专业商店在淮海路开业。&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;同年，淮海路网点大规模调整，进行了扩、并、撤、迁。调整中保留与发展了一些商店经营特色，如老大昌的西点、红房子的法式西菜。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3EibeAseynTr8xAHSxQIlHnWhkjiaykezicE4hQ8329UK8tBD7VO3uB3ag/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;20世纪50年代的红房子西菜馆&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;改革开放的春风，给淮海路吹来了生机活力，商业开始快速发展，&lt;/span&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;&lt;strong&gt;诞生了一批上海“第一”：上海第一家电脑商店，上海第一家美容美发厅“露美”，上海第一家大众快餐店“大东”，上海第一场时装发布会。&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;紧接着通过引进外资、改革管理、改造设备、拓展空间，不少商业企业调整重组，开始规模化经营。淮海路先后建成了富丽华大酒家、雪豹商城等多功能楼宇；红星眼镜、人民摄影、淮海照相馆等颇有特色的专业公司和商店。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3mmbyHxIicg2ibp4GtDMZh2Zo1aNHQGzGTD150ao1Q6q35c9IKia1YJHVQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;改革开放后，淮海路上诞生了一批专业型的特色商品，比如人民摄影&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;/section&gt;&lt;section&gt;&lt;p style=&quot;box-sizing: border-box;&quot;&gt;淮海路商业快速发展&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;居民生活条件却落后&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;怎么办？&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;百年淮海路有说不完的故事。看历史，可以去国家级文物保护单位“中共一大会址”“共青团中央旧址”“中山故居”“宋庆龄故居”。而“上海广场”“柳林大厦”等一批现代大楼、轨道交通线路站点的背后，也有一段喜怒哀乐的故事。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;经济与民生如何“共赢”，是淮海路发展回避不了的话题。从20世纪80年代起，&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;商业快速发展的同时，一个现实问题摆在了淮海路面前：居民的生活条件落后了。&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;从此，淮海路的商业变迁和居民动迁紧密交织在一起。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;30年前，淮海路林立高楼、灯光夜市的背后，是一排排低矮老旧的砖木结构里弄房屋。“几平方米的亭子间，住了三个人，现在的年轻人根本想象不到。”一位负责过淮海路动迁的老干部回忆。空间逼仄的同时，居民生活极为不便。&lt;/span&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;&lt;strong&gt;“以前睡觉要爬到阁楼，烧饭要到底楼，倒马桶要跑到屋子外。”&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;原淮海中路358弄居民郑詠咎说。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3If8dCWczsDe8ABGYQyeTBiblcP0Oxa4gHPQAdmL3dDKq9TGVomdx21Q/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;上海老弄堂一间十几平方米的屋子，可能住着好几代人&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;危棚简屋的存在，也成为淮海路商业升级的掣肘。原卢湾区地方志办公室许洪新表示，淮海路商业街是在住宅区基础上发展起来的，在20世纪90年代初，大多是“层高不高、进深不深”，设施简陋，房屋陈旧，平均每个商店营业面积152平方米。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;1985年，淮海路开启了改善居民居住条件的探索之路：淮海金融大厦开始动工兴建，就此拉开淮海路街坊改造的序幕。“&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;通过旧区改造，淮海路周边区域，逐步摆脱了危棚简屋，一步步跃迁为现代楼宇林立的国际化商业街。&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;” 永业集团党委书记戴金梁说。与此同时，动迁居民纷纷入住崭新的居民楼。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3iaY7orjkBXsk7VCnh6plygdQfEOxIZAlJ9vYyveSEOSLXgIMayl9NvQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3Uly6vamE3EvibjNGavrqlA6WMNMQ8jl6jXCUgZGibZ1zDLdDRtQXdnLw/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;原柳林市场在动迁后变成淮海中路1号，柳林大厦&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;居住条件改善的同时，居民也为上海城建做出了大贡献。上海进入“一年一个样、三年大变样”以来，城市进入快速发展时期。淮海路开始“形态”大改造，随着轨道交通掘进、管线重排和路面改铺，道路两边的老住宅开始动迁、改造。1992年在建设轨道交通1号线的过程中，因工程需要，必须拆掉华一服装商店的一个仓库。“华一”为配合地铁建设，迅速将仓库内价值百万的商品搬走。前后只花了四天时间，仓库就变成可供工程车进出的通道。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3S93r4Wwia2SibqlTBibrvmJNka3qReiaOwQPEsQoU0SG63MgVb5u79OpWA/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;在居民配合下，轨道交通1号线顺利于1995年全线完工，图为通车仪式&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;20世纪90年代初，商业用房面积扩至23万平方米，形成多功能、现代化、综合性的商业区。1995年，轨道交通1号线通车，淮海路沿线的陕西南路、黄陂南路、常熟路地铁站启用。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;/section&gt;&lt;section&gt;&lt;p style=&quot;box-sizing: border-box;&quot;&gt;更新改造&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;让老建筑“活化”&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;近年来，在城市更新的背景下，改善居民生活条件改善则与历史文脉保护有机结合。位于淮海中路358弄的石库门里弄住宅“尚贤坊”正在进行更新改造，这里将纳入商业业态。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 432px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3xNlhSozjWeMMvS23gW8LOW01jqZo1rNUyfnnsVHM3msaBdhO947wWQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;尚贤坊鸟瞰图&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3DrNpqrDacCiaF5REfcQ801gqbKSNibZCA8AriblkVqBg3ibCJnhrrxKWsA/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;保护更新中的“尚贤坊”&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;2002年，新天地地块全面开业。这片占地3万平方米，建筑面积6万平方米的石库门建筑保留了当年的砖墙、瓦片。内部则是按照现代标准进行建设，并纳入商业业态。2010年，紧邻淮海中路的思南公馆保护改造项目试营业。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3fMCSjJJZGk3RqwEo4LWpGtN01qc8UFVnkETq3a9qZeRebd4jbW4qFg/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;独特的石库门建筑特色，让新天地成为上海极具人气的商业区域&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;在《思南公馆保留保护改造项目规划》可以看到，这一区域共涉及保留保护的老建筑49幢，其中39幢先后被确定为上海市优秀历史建筑。据研究，上海近代曾出现10种历史居住建筑类型，除了石库门和高层公寓两种形式外，思南公馆区域囊括了独立式花园住宅、联排式住宅、联立式花园住宅、新式里弄住宅、花园里弄住宅、现代公寓式住宅、外廊式住宅、带内院独立式花园住宅等8种住宅类型。在这8种类型的住宅中，均植入了新业态，帮助老建筑活化。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3w80zqPq80oYOcseXTibyrSWic4gF0375ic85kugMajCoSAx1X3UK3licIA/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3nm1WPEiaQmgqmR5y6jSRgO0EpV7MEsGs4akicUq6LQrj7We6g3zjZClQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;在保护更新并植入新业态后，思南公馆不乏人气&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;在世博会前，淮海路已经拥有一批具有影响力的全球品牌旗舰店，对原卢湾区的经济贡献占比达到60%至70%，也为其发展为更有影响力的国际商业街区奠定了基础。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;PS：庆祝改革开放40周年——《情“迁”淮海路主题展》在淮海中路650弄3号孙中山行馆旧址正式对公众开放，为期一个月。这是上海首个以淮海路变迁和居民居住条件的改善为主题的展览。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;letter-spacing: 0.544px;line-height: 27.2px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;max-width: 100%;color: rgb(136, 136, 136);font-size: 14px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;解放日报·上观新闻原创稿件，转载请注明出处&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;hr style=&quot;max-width: 100%;letter-spacing: 0.544px;line-height: 27.2px;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;&quot;&gt;\n&lt;p style=&quot;margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;letter-spacing: 0.544px;line-height: 27.2px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;max-width: 100%;color: rgb(136, 136, 136);font-size: 14px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;作者：戚颖璞&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;letter-spacing: 0.544px;line-height: 27.2px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;max-width: 100%;color: rgb(136, 136, 136);font-size: 14px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;微信编辑：纳米&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;max-width: 100%;min-height: 1em;letter-spacing: 0.544px;line-height: 27.2px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;br style=&quot;max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;letter-spacing: 0.544px;line-height: 1.5em;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;box-sizing: border-box !important; overflow-wrap: break-word !important; visibility: visible !important; width: 652px !important; height: auto !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_jpg/wm80Ec5NJpkU2vR0HnibpIPOEUankhD3uPAWicsHLsNzf9iabXtznsXh2hKXNibDCiclR1KLOTmdMeIdlicqlfFkkaSQ/640?wx_fmt=jpeg&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot; width=&quot;auto&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;letter-spacing: 0.544px;line-height: 1.5em;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;max-width: 100%;font-size: 15px;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;max-width: 100%;color: rgb(36, 62, 133);box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;&quot;&gt;觉得不错?&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;max-width: 100%;color: rgb(170, 9, 15);box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt; &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;max-width: 100%;color: rgb(255, 255, 255);font-size: 15px;background-color: rgb(170, 9, 15);box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;&quot;&gt; 点个赞吧！&lt;/span&gt;&lt;/p&gt;\n&lt;h2 class=&quot;rich_media_title&quot; id=&quot;activity-name&quot;&gt;百年淮海路的双面回忆：时髦商场和烟火里弄&lt;/h2&gt;\n&lt;p&gt;&lt;span class=&quot;rich_media_meta rich_media_meta_text&quot;&gt;\r\n                                                戚颖璞                                            &lt;/span&gt;\r\n                                        \r\n                                        &lt;span class=&quot;rich_media_meta rich_media_meta_nickname&quot; id=&quot;profileBt&quot;&gt;\r\n                      &lt;a href&gt;\r\n                        解放日报                      &lt;/a&gt;\r\n                      \r\n                    &lt;/span&gt;\r\n\r\n\r\n                    &lt;em id=&quot;publish_time&quot; class=&quot;rich_media_meta rich_media_meta_text&quot;&gt;1周前&lt;/em&gt;\r\n\r\n\r\n\r\n\r\n\r\n                &lt;/p&gt;\n&lt;h2 class=&quot;&quot; style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;letter-spacing: 0.544px; font-size: 17px; line-height: 27.2px; box-sizing: border-box !important; overflow-wrap: break-word !important; visibility: visible !important; width: 660.994px !important; height: auto !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_jpg/wm80Ec5NJpks1t3ONJTMWyOsyNCqp7d9bGGAhibq4LgACbz9whrXl8gVAgmttlO8YbjILhFduRStlfOCdiakuhww/640?wx_fmt=jpeg&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot; width=&quot;100%&quot;&gt;&lt;/h2&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(36, 62, 133);font-size: 15px;&quot;&gt;有人说上海有条路&lt;br&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;一年365天都排队&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_jpg/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3xc5fwl5rXC0FpmJp7Q3EaIY2LEMrDRgkZxE7IfwvEfpZHo8uBDPJqQ/640?wx_fmt=jpeg&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;老人们爱来这排队&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot; __bg_gif&quot; style=&quot;width: 640px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_gif/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3pwlXEBBYic6mUNKEUustnBnZf003JaC1sB5dRWj9LJPa8uCgBxicJgJA/640?wx_fmt=gif&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;“光明邨大酒店”“哈尔滨食品厂”“老大昌”等老字号每天吸引着无数饕客&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;年轻人也爱来排队&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot; __bg_gif&quot; style=&quot;width: 640px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_gif/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3ST6GfEJkvElWnAS9zWVlBGibaXv9IZP9R3nYXdIicPXendtaANosjJzQ/640?wx_fmt=gif&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;入驻的优衣库旗舰店、无印良品旗舰店、LINE FRIENDS、Gentle Monster、“维多利亚的秘密”等国外知名品牌，是时尚的最佳标签。&lt;/span&gt;&lt;br&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;老字号、新品牌&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;在淮海路交织相融，聚集人气&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;殊不知这条时髦、有腔调的繁华道路&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(170, 9, 15);&quot;&gt;已经走过了沧桑一世纪&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;它的繁华剧变和商业升级&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;在改革开放后不断加快&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;它的持久生命力&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;也离不开老百姓的支持&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;跟着解放君来了解它&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;p style=&quot;margin: 10px 8px;text-align: center;box-sizing: border-box;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;/section&gt;&lt;section&gt;&lt;p style=&quot;box-sizing: border-box;&quot;&gt;淮海中路历经五次更名&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;诞生过多个上海“第一”&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;淮海路拥有数百家现代化特色商店，其商业底蕴可追溯至百年前。整条道路长约6公里，分为东、中、西三段。其中，淮海中路的历史积淀最为厚重，它从晚清、民国延续至今，五次易名。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;淮海中路辟筑于1900年。&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;辟筑之初，东段名西江路，西段名宝昌路，后又统称宝昌路。1915年更名为霞飞路；1943年更名泰山路，1945年，又宣布改称“林森中路”；1950年才改名为“淮海中路”。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;路名变换，伴随着业态变化。20世纪初，淮海中路只有一些小型洋货洋酒商铺。从20世纪20年代起，俄侨带动各国商人纷至沓来。到1935年前后，整条路的俄侨商店不下五六百家，还有数十家来自其它国家的商店企业。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3VHeriahM7xZJxylIl9Zlagnt8nWyBmOl1XWic8ibnGIncAiaUibvApHse2g/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3s58sbpRiahVdZh2Eq6kXficeiaEibaeWWPw3ygEO9tUSibrVpw0NT7PKRMg/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;20世纪30年代，俄侨在霞飞路（今淮海路）开设的照相图片馆和咖啡店&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;与此同时，华商在淮海路崛起。山东籍商人凭借通晓俄语、熟谙俄侨习性的优势，成为华商中的主力军。&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;著名的福利面包公司就由山东籍商人创办，这就是今天的哈尔滨食品厂。&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3qUkraSLCrdsGFdlAKfBAFyB7erGnSIVKNCky4Gkr3UTjd2fBvPnO7Q/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3xUGb4E2sFZsjBP2c0pDJ67tsb7hqQ2yKZaeEsoA2iaRuvNj3FuBjpQQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;由华商开设的福利面包店，就是今日的哈尔滨食品厂前身&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;受战乱影响，20世纪40年代的淮海路逐渐没落，不复旧日繁华。直至1950年起重获恢复和发展。&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;1956年，全国最早、上海最大的妇女用品专业商店在淮海路开业。&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;同年，淮海路网点大规模调整，进行了扩、并、撤、迁。调整中保留与发展了一些商店经营特色，如老大昌的西点、红房子的法式西菜。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3EibeAseynTr8xAHSxQIlHnWhkjiaykezicE4hQ8329UK8tBD7VO3uB3ag/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;20世纪50年代的红房子西菜馆&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;改革开放的春风，给淮海路吹来了生机活力，商业开始快速发展，&lt;/span&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;&lt;strong&gt;诞生了一批上海“第一”：上海第一家电脑商店，上海第一家美容美发厅“露美”，上海第一家大众快餐店“大东”，上海第一场时装发布会。&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;紧接着通过引进外资、改革管理、改造设备、拓展空间，不少商业企业调整重组，开始规模化经营。淮海路先后建成了富丽华大酒家、雪豹商城等多功能楼宇；红星眼镜、人民摄影、淮海照相馆等颇有特色的专业公司和商店。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3mmbyHxIicg2ibp4GtDMZh2Zo1aNHQGzGTD150ao1Q6q35c9IKia1YJHVQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;改革开放后，淮海路上诞生了一批专业型的特色商品，比如人民摄影&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;/section&gt;&lt;section&gt;&lt;p style=&quot;box-sizing: border-box;&quot;&gt;淮海路商业快速发展&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;居民生活条件却落后&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;怎么办？&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;百年淮海路有说不完的故事。看历史，可以去国家级文物保护单位“中共一大会址”“共青团中央旧址”“中山故居”“宋庆龄故居”。而“上海广场”“柳林大厦”等一批现代大楼、轨道交通线路站点的背后，也有一段喜怒哀乐的故事。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;经济与民生如何“共赢”，是淮海路发展回避不了的话题。从20世纪80年代起，&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;商业快速发展的同时，一个现实问题摆在了淮海路面前：居民的生活条件落后了。&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;从此，淮海路的商业变迁和居民动迁紧密交织在一起。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;30年前，淮海路林立高楼、灯光夜市的背后，是一排排低矮老旧的砖木结构里弄房屋。“几平方米的亭子间，住了三个人，现在的年轻人根本想象不到。”一位负责过淮海路动迁的老干部回忆。空间逼仄的同时，居民生活极为不便。&lt;/span&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;&lt;strong&gt;“以前睡觉要爬到阁楼，烧饭要到底楼，倒马桶要跑到屋子外。”&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;原淮海中路358弄居民郑詠咎说。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3If8dCWczsDe8ABGYQyeTBiblcP0Oxa4gHPQAdmL3dDKq9TGVomdx21Q/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;上海老弄堂一间十几平方米的屋子，可能住着好几代人&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;危棚简屋的存在，也成为淮海路商业升级的掣肘。原卢湾区地方志办公室许洪新表示，淮海路商业街是在住宅区基础上发展起来的，在20世纪90年代初，大多是“层高不高、进深不深”，设施简陋，房屋陈旧，平均每个商店营业面积152平方米。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;1985年，淮海路开启了改善居民居住条件的探索之路：淮海金融大厦开始动工兴建，就此拉开淮海路街坊改造的序幕。“&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15px;color: rgb(36, 62, 133);&quot;&gt;通过旧区改造，淮海路周边区域，逐步摆脱了危棚简屋，一步步跃迁为现代楼宇林立的国际化商业街。&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;” 永业集团党委书记戴金梁说。与此同时，动迁居民纷纷入住崭新的居民楼。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3iaY7orjkBXsk7VCnh6plygdQfEOxIZAlJ9vYyveSEOSLXgIMayl9NvQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3Uly6vamE3EvibjNGavrqlA6WMNMQ8jl6jXCUgZGibZ1zDLdDRtQXdnLw/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;原柳林市场在动迁后变成淮海中路1号，柳林大厦&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;居住条件改善的同时，居民也为上海城建做出了大贡献。上海进入“一年一个样、三年大变样”以来，城市进入快速发展时期。淮海路开始“形态”大改造，随着轨道交通掘进、管线重排和路面改铺，道路两边的老住宅开始动迁、改造。1992年在建设轨道交通1号线的过程中，因工程需要，必须拆掉华一服装商店的一个仓库。“华一”为配合地铁建设，迅速将仓库内价值百万的商品搬走。前后只花了四天时间，仓库就变成可供工程车进出的通道。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3S93r4Wwia2SibqlTBibrvmJNka3qReiaOwQPEsQoU0SG63MgVb5u79OpWA/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;在居民配合下，轨道交通1号线顺利于1995年全线完工，图为通车仪式&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;20世纪90年代初，商业用房面积扩至23万平方米，形成多功能、现代化、综合性的商业区。1995年，轨道交通1号线通车，淮海路沿线的陕西南路、黄陂南路、常熟路地铁站启用。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;section&gt;&lt;/section&gt;&lt;section&gt;&lt;p style=&quot;box-sizing: border-box;&quot;&gt;更新改造&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box;&quot;&gt;让老建筑“活化”&lt;/p&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;/section&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;近年来，在城市更新的背景下，改善居民生活条件改善则与历史文脉保护有机结合。位于淮海中路358弄的石库门里弄住宅“尚贤坊”正在进行更新改造，这里将纳入商业业态。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 432px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3xNlhSozjWeMMvS23gW8LOW01jqZo1rNUyfnnsVHM3msaBdhO947wWQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;尚贤坊鸟瞰图&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3DrNpqrDacCiaF5REfcQ801gqbKSNibZCA8AriblkVqBg3ibCJnhrrxKWsA/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;保护更新中的“尚贤坊”&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;2002年，新天地地块全面开业。这片占地3万平方米，建筑面积6万平方米的石库门建筑保留了当年的砖墙、瓦片。内部则是按照现代标准进行建设，并纳入商业业态。2010年，紧邻淮海中路的思南公馆保护改造项目试营业。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3fMCSjJJZGk3RqwEo4LWpGtN01qc8UFVnkETq3a9qZeRebd4jbW4qFg/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;独特的石库门建筑特色，让新天地成为上海极具人气的商业区域&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;在《思南公馆保留保护改造项目规划》可以看到，这一区域共涉及保留保护的老建筑49幢，其中39幢先后被确定为上海市优秀历史建筑。据研究，上海近代曾出现10种历史居住建筑类型，除了石库门和高层公寓两种形式外，思南公馆区域囊括了独立式花园住宅、联排式住宅、联立式花园住宅、新式里弄住宅、花园里弄住宅、现代公寓式住宅、外廊式住宅、带内院独立式花园住宅等8种住宅类型。在这8种类型的住宅中，均植入了新业态，帮助老建筑活化。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3w80zqPq80oYOcseXTibyrSWic4gF0375ic85kugMajCoSAx1X3UK3licIA/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;border-width: 0px; border-style: initial; border-color: initial; margin: 0px; top: 0px; left: 0px; right: 0px; bottom: 0px; width: 677px !important; height: auto !important; visibility: visible !important;&quot; src=&quot;https://mmbiz.qpic.cn/mmbiz_png/wm80Ec5NJpnuveVJECXNOt2Wic0mNYibl3nm1WPEiaQmgqmR5y6jSRgO0EpV7MEsGs4akicUq6LQrj7We6g3zjZClQ/640?wx_fmt=png&amp;amp;wxfrom=5&amp;amp;wx_lazy=1&amp;amp;wx_co=1&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 14px;color: rgb(136, 136, 136);&quot;&gt;在保护更新并植入新业态后，思南公馆不乏人气&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;在世博会前，淮海路已经拥有一批具有影响力的全球品牌旗舰店，对原卢湾区的经济贡献占比达到60%至70%，也为其发展为更有影响力的国际商业街区奠定了基础。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-left: 8px;margin-right: 8px;&quot;&gt;&lt;span style=&quot;font-size: 15px;color: rgb(136, 136, 136);&quot;&gt;PS：庆祝改革开放40周年——《情“迁”淮海路主题展》在淮海中路650弄3号孙中山行馆旧址正式对公众开放，为期一个月。这是上海首个以淮海路变迁和居民居住条件的改善为主题的展览。&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-right: 8px;margin-left: 8px;max-width: 100%;min-height: 1em;letter-spacing: 0.544px;line-height: 27.2px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;strong style=&quot;max-width: 100%;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;&lt;span style=&quot;max-width: 100%;color: rgb(136, 136, 136);font-size: 14px;box-sizing: border-box !important;word-wrap: break-word !important;&quot;&gt;解放日报·上观新闻原创稿件，转载请注明出处&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;hr style=&quot;max-width: 100%;letter-spacing: 0.544px;line-height: 27.2px;box-sizing: border-box !important;word-wrap: break-word !important;overflow-wrap: break-word !important;&quot;&gt;\n&lt;h2 class=&quot;rich_media_title&quot; id=&quot;activity-name&quot;&gt;百年淮海路的双面回忆：时髦商场和烟火里弄&lt;/h2&gt;\n&lt;h2 class=&qu', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------
INSERT INTO `cmf_portal_tag` VALUES ('2', '1', '0', '0', '本科');
INSERT INTO `cmf_portal_tag` VALUES ('3', '1', '0', '0', '2');
INSERT INTO `cmf_portal_tag` VALUES ('4', '1', '0', '0', '本科/2');

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------
INSERT INTO `cmf_portal_tag_post` VALUES ('5', '4', '19', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('6', '4', '18', '1');

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------
INSERT INTO `cmf_route` VALUES ('13', '10000', '1', '1', 'portal/index/about', 'about');
INSERT INTO `cmf_route` VALUES ('14', '10000', '1', '1', 'portal/index/project', 'project');
INSERT INTO `cmf_route` VALUES ('15', '10000', '1', '1', 'portal/index/news', 'news');
INSERT INTO `cmf_route` VALUES ('16', '10000', '1', '1', 'portal/index/cooperation', 'cooperation');
INSERT INTO `cmf_route` VALUES ('17', '10000', '1', '1', 'portal/index/index', 'index');
INSERT INTO `cmf_route` VALUES ('18', '10000', '1', '1', 'portal/index/contact', 'contact');
INSERT INTO `cmf_route` VALUES ('19', '10000', '1', '1', 'portal/index/about_honor', 'about_honor');
INSERT INTO `cmf_route` VALUES ('20', '10000', '1', '1', 'portal/index/news_list', 'news_list');
INSERT INTO `cmf_route` VALUES ('21', '10000', '1', '1', 'portal/index/newsdetails', 'newsdetails');
INSERT INTO `cmf_route` VALUES ('22', '10000', '1', '1', 'portal/index/join', 'join');
INSERT INTO `cmf_route` VALUES ('23', '10000', '1', '1', 'portal/index/project_list', 'project_list');
INSERT INTO `cmf_route` VALUES ('24', '10000', '1', '1', 'portal/index/projectdetails', 'projectdetails');
INSERT INTO `cmf_route` VALUES ('25', '10000', '1', '1', 'portal/index/structure', 'structure');

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES ('1', '1', '0', 'Reputation Business Home', 'Reputation Business');
INSERT INTO `cmf_slide` VALUES ('2', '1', '0', 'Project display', 'Project display');
INSERT INTO `cmf_slide` VALUES ('3', '1', '0', 'information centre', 'information centre');
INSERT INTO `cmf_slide` VALUES ('4', '1', '0', 'Partner', 'Partner');
INSERT INTO `cmf_slide` VALUES ('5', '1', '0', 'contact us', 'contact us');
INSERT INTO `cmf_slide` VALUES ('6', '1', '0', 'Reputation Business About page', 'Reputation Business ');

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of cmf_slide_item
-- ----------------------------
INSERT INTO `cmf_slide_item` VALUES ('1', '1', '1', '10000', 'Specialized commercial operations', 'admin/20181217/bed9d8b0548482a2a42db136af5fd900.jpg', 'contact.html', '', 'contact us', 'contact us', null);
INSERT INTO `cmf_slide_item` VALUES ('2', '2', '1', '10000', 'Project ', 'portal/20181217/d596285f62f95250e1590caaf822154f.jpg', 'project.html', '', 'Professional business operations', 'Professional business operations', null);
INSERT INTO `cmf_slide_item` VALUES ('3', '5', '1', '10000', 'contact us', 'portal/20181217/d596285f62f95250e1590caaf822154f.jpg', 'contact.html', '', 'Professional business operations', '', null);
INSERT INTO `cmf_slide_item` VALUES ('4', '6', '1', '10000', 'Trust business', 'portal/20181217/d596285f62f95250e1590caaf822154f.jpg', 'about.html', '', 'Professional business operations', '', null);
INSERT INTO `cmf_slide_item` VALUES ('5', '3', '1', '10000', 'news', 'portal/20181217/d596285f62f95250e1590caaf822154f.jpg', 'news.html', '', 'Professional business operations', '', null);
INSERT INTO `cmf_slide_item` VALUES ('6', '4', '1', '10000', 'Partner', 'portal/20181217/d596285f62f95250e1590caaf822154f.jpg', 'cooperation.html', '', 'Professional business operations', '', null);

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES ('1', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES ('1', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('2', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('3', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('4', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('5', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('6', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('7', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('8', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);

-- ----------------------------
-- Table structure for cmf_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
-- Records of cmf_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES ('1', '1', '0', '0', '1547086964', '0', '0', '0.00', '1544784063', '1', 'admin', '###a9685e3d15e973d8f0e4734904c57653', 'admin', '55555@qq.com', '', '', '', '58.35.151.19', '', '', null);

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
INSERT INTO `cmf_user_action` VALUES ('1', '1', '1', '1', '2', '1', '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
-- Records of cmf_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_log`;
CREATE TABLE `cmf_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';

-- ----------------------------
-- Records of cmf_user_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
-- Records of cmf_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

-- ----------------------------
-- Records of cmf_user_like
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
-- Records of cmf_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Records of cmf_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES ('1', '1', '1560336122', '1544784122', '907133f612268fdd969acbce1cbfdc7af9ad28c0c05dc795a138108e379119d4', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------
