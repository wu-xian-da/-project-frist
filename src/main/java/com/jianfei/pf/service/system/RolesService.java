/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午10:01:53
  */
package com.jianfei.pf.service.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jianfei.pf.dao.system.RolesDao;
import com.jianfei.pf.entity.system.Roles;

@Service
public class RolesService {
	
	@Autowired
	private RolesDao rolesDao;
	
	public int insertRoles(Roles roles){
		return this.rolesDao.insertRoles(roles);
	}
	
	public int updateRoles(Roles roles){
		return this.rolesDao.updateRoles(roles);
	}
	
	public int deleteRoles(int id){
		return this.rolesDao.deleteRoles(id);
	}
	
	public Roles findRolesById(int id){
		return this.rolesDao.findRolesById(id);
	}
	
	public List<Roles> findAllRoles(){
		return this.rolesDao.findAllRoles();
	}
	
}
