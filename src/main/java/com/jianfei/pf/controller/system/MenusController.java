/**
  *project project-frist
  *@author changchun.wu
  *2017年8月18日下午2:35:13
  */
package com.jianfei.pf.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jianfei.pf.entity.common.MenuType;
import com.jianfei.pf.entity.system.Menus;
import com.jianfei.pf.service.system.MenusService;

@Controller
@RequestMapping("/system/menus")
public class MenusController {

	@Autowired
	private MenusService menusService;
	
	public void setModel (Model model){
		model.addAttribute("type",MenuType.values());
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String Forminsert(Model model){
		this.setModel(model);
		return "system/menus/form";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(Menus menus ,Model model){
		Menus menu = this.menusService.findMenusByPermission(menus.getPermission());
		if (menu != null) {
			System.out.println("权限已经存在,请更换!");
			return "system/menus/form";
		} 
		int result = this.menusService.insert(menus);
		if (result > 0) {
			System.out.println("保存权限成功");
		} else {
			System.out.println("保存权限失败");
		}
		return "redirect:/system/menus";
	}
	
	@RequestMapping(value="/update/{id}",method=RequestMethod.GET)
	public String Formupdate(@PathVariable("id") int id,Model model){
		this.setModel(model);
		model.addAttribute("menus",menusService.findById(id));
		return "system/menus/form";
	}
	
	@RequestMapping(value="/update/{id}",method=RequestMethod.POST)
	public String update(@PathVariable("id") int id,Menus menus,Model model) {
		Menus menu = this.menusService.findMenusByPermission(menus.getPermission());
		if (menu != null && menu.getId() != id) {
			this.setModel(model);
			System.out.println("更新的权限名称已经存在,请更换");
			return "system/menus/form";
		}
		int result = menusService.update(menus);
		if (result > 0) {
			System.out.println("更新成功");
		} else {
			System.out.println("更新失败");
			this.setModel(model);
			return "system/menus/form";
		}
		return "redirect:/system/menus";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id){
		int result = this.menusService.delete(id);
		if (result > 0) {
			System.out.println("删除成功");
		} else {
			System.out.println("删除失败");
			return "system/menus/list";
		}
		return "redirect:/system/menus";
	}
	
	@RequestMapping
	public String list(Model model,Menus menus){
		model.addAttribute("page",menusService.findPage(menus));
		this.setModel(model);
		return "system/menus/list";
	}
}
