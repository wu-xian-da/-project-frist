/**
  *project project-frist
  *@author changchun.wu
  *2017年7月26日下午3:20:53
  */
package com.jianfei.pf.dao.system;

import java.util.Date;

import com.jianfei.pf.base.dao.CrudDao;
import com.jianfei.pf.entity.system.Users;

public interface UsersDao extends CrudDao<Users>{
	
	/***
	 * 用户登录
	 * @param loginTime
	 * @return
	 */
	public Users findUsersByNickname(String nickname);
	
	public int insertLoginTime(Date loginTime);
	
	public int updateLoginTimeAndIp(Users users);
}
