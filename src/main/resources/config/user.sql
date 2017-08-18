/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.24 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `system_users` (
	`id` int (20),
	`username` char (60),
	`password` char (60),
	`nickname` char (60),
	`role_id` int (20),
	`gender` smallint (1),
	`age` int (3),
	`create_time` timestamp ,
	`login_time` timestamp ,
	`ip` char (60)
); 
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('经理','qwe123','admin','1','0','22','2017-08-08 13:47:34','2017-08-11 15:44:01','0:0:0:0:0:0:0:1');
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('张三','qwe123','111','2','1','11','2017-08-08 14:57:59','2017-08-10 13:35:30','0:0:0:0:0:0:0:1');
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('李四','qwe123','222','2','1','22','2017-08-08 17:06:37',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('王五','qwe123','333','2','1','21','2017-07-31 15:46:32','2017-08-10 13:43:21','0:0:0:0:0:0:0:1');
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('东方闪电','qwe123','444','20','1','23','2017-08-09 13:47:21',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('李四','qwe123','555','1','0','22','2017-08-09 13:50:20',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('王超','qwe123','666','19','0','23','2017-08-09 13:58:24',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('马哈','qwe123','777','1','0','34','2017-08-09 14:34:44',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('张飞','qwe123','888','1','0','34','2017-08-09 14:37:46',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('张海','qwe123','999','1','0','23','2017-08-09 14:39:37',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('第三方','dfget34fg','1111','20','0','23','2017-08-09 14:41:36',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('水电费','dfgdfget','2222','20','0','34','2017-08-09 14:48:21',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('水电费','qwe123','3333','1','1','34','2017-08-09 14:54:53',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('水电费','wewww23','4444','1','0','23','2017-08-09 15:03:40',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('胜多负少多','werw23w','5555','1','0','23','2017-08-09 15:09:15',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('胜多负少','dfs2321','6666','1','0','23','2017-08-09 15:17:55',NULL,NULL);
insert into `system_users` ( `username`, `password`, `nickname`, `role_id`, `gender`, `age`, `create_time`, `login_time`, `ip`) values('的分解','qwe123','jdjif','1','0','23','2017-08-10 16:31:52',NULL,NULL);
