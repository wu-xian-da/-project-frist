/**
  *project project-frist
  *@author changchun.wu
  *2017年8月18日下午2:34:20
  */
package com.jianfei.pf.service.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jianfei.pf.base.service.CrudService;
import com.jianfei.pf.dao.system.MenusDao;
import com.jianfei.pf.entity.system.Menus;

@Service
public class MenusService extends CrudService<MenusDao, Menus> {

	@Autowired
	private MenusDao menusDao;
	
	public Menus findMenusByPermission(String permission){
		return this.menusDao.findMenusByPermission(permission);
	}
	
	public List<Menus> findMenuForRole(){
		return this.menusDao.findMenuForRole();
	}
}
