/**
  *project project-frist
  *@author changchun.wu
  *2017年7月26日下午3:31:35
  */
package com.jianfei.pf.service.system;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jianfei.pf.base.service.CrudService;
import com.jianfei.pf.dao.system.UsersDao;
import com.jianfei.pf.entity.system.Users;

@Service
public class UsersService extends CrudService<UsersDao, Users>{

	@Autowired
	private UsersDao usersDao;
	
	public Users findUsersByNcikname(String nickname){
		return this.usersDao.findUsersByNickname(nickname);
	}
	
	public int insertLoginTime(Date loginTime){
		return this.usersDao.insertLoginTime(loginTime);
	}
	
	public int updateLoginTimeAndIp(Users users){
		return this.usersDao.updateLoginTimeAndIp(users);
	}
}
