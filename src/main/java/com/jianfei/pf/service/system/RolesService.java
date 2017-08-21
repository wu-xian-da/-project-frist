/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午10:01:53
  */
package com.jianfei.pf.service.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jianfei.pf.base.service.CrudService;
import com.jianfei.pf.dao.system.RolesDao;
import com.jianfei.pf.entity.system.Roles;

@Service
public class RolesService extends CrudService<RolesDao, Roles>{
	
	@Autowired
	private RolesDao rolesDao;
	
	public Roles findRolesByRolename(String rolename){
		return this.rolesDao.findRolesByRolename(rolename);
	}
	
	public int insertRoleMenu(Roles entity){
		return this.rolesDao.insertRoleMenu(entity);
	}
	
	public int deleteRoleMenu(int id){
		return this.rolesDao.deleteRoleMenu(id);
	}
	
	public Roles getRoleMenus(int id){
		return this.dao.getRoleMenus(id);
	}
}
