/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.24 : Database - pf
*********************************************************************
*/CREATE TABLE `system_users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` char(60) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `nickname` char(60) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  `gender` smallint(1) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` char(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKwieroi23` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


CREATE TABLE `system_roles` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_name` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE `system_menus` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `href` varchar(200) NOT NULL DEFAULT '',
  `permission` varchar(80) NOT NULL DEFAULT '',
  `type` smallint(1) NOT NULL DEFAULT '0',
  `sort` int(4) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



CREATE TABLE `system_role_menu` (
  `role_id` int(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  KEY `Fkewrwer2` (`menu_id`),
  KEY `FKwerw23w` (`role_id`),
  CONSTRAINT `FKwerw23w` FOREIGN KEY (`role_id`) REFERENCES `system_roles` (`id`),
  CONSTRAINT `Fkewrwer2` FOREIGN KEY (`menu_id`) REFERENCES `system_menus` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('1','系统管理','/system','','0','1','-1',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('2','系统日志','/login','','0','2','-1',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('3','会员管理','/member','','0','3','-1',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('4','用户管理','/system/users','users:list','0','1','1',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('5','角色管理','/system/roles','roles:list','0','2','1',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('6','权限管理','/system/menus','menus:list','0','3','1',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('7','新增','/system/users/insert','users:insert','1','1','4',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('8','编辑','/system/users/update/*','users:update','1','2','4',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('9','删除','/system/users/delete/*','users:delete','1','3','4',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('10','查询','/system/users','users:select','1','4','4',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('11','新增','/system/roles/insert','roles:insert','1','1','5',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('12','编辑','/system/roles/update/*','roles:update','1','2','5',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('13','删除','/system/roles/delete/*','roles:delete','1','3','5',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('14','查询','/system/roles','roles:select','1','4','5',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('15','新增','/system/menus/insert','menus:insert','1','1','6',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('16','编辑','/system/menus/update/*','menus:update','1','2','6',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('17','删除','/system/menus/delete/*','menus:delete','1','3','6',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('18','查询','/system/menus/select','menus:select','1','4','6',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('19','登录日志','/login/logins','login:logins','0','1','2',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('20','访问日志','/login/access','login:access','0','2','2',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('21','站点统计','/member/count','member:count','0','1','3',NULL);
insert into `system_menus` (`Id`, `name`, `href`, `permission`, `type`, `sort`, `parent_id`, `icon`) values('22','会员记录','/member/auth','member:auth','0','2','3',NULL);
