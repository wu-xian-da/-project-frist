/**
  *project project-frist
  *@author changchun.wu
  *2017年8月18日下午2:33:32
  */
package com.jianfei.pf.dao.system;

import java.util.List;

import com.jianfei.pf.base.dao.CrudDao;
import com.jianfei.pf.entity.system.Menus;

public interface MenusDao extends CrudDao<Menus> {

	public Menus findMenusByPermission(String permission);
	
	public List<Menus> findMenuForRole();

}
