/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午9:58:21
  */
package com.jianfei.pf.dao.system;

import com.jianfei.pf.base.dao.CrudDao;
import com.jianfei.pf.entity.system.Roles;

public interface RolesDao extends CrudDao<Roles>{
	
	/***
	 * 根据角色名称查询Roles
	 * @param roles
	 * @return
	 */
	public Roles findRolesByRolename(String rolename);
	
	public int insertRoleMenu(Roles entity);
	
	public int deleteRoleMenu(int id);
	
	public Roles getRoleMenus(int id);
	
}
