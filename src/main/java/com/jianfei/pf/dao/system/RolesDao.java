/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午9:58:21
  */
package com.jianfei.pf.dao.system;

import java.util.List;

import com.jianfei.pf.base.dao.CrudDao;
import com.jianfei.pf.entity.system.Roles;

public interface RolesDao extends CrudDao<Roles>{

	public int insertRoles(Roles roles);
	
	public int updateRoles(Roles roles);
	
	public int deleteRoles(int id);
	
	public Roles findRolesById(int id);
	
	public List<Roles> findAllRoles();
}
