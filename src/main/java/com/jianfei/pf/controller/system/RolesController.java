/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午10:48:16
  */
package com.jianfei.pf.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jianfei.pf.entity.system.Roles;
import com.jianfei.pf.service.system.MenusService;
import com.jianfei.pf.service.system.RolesService;


@Controller
@RequestMapping("/system/roles")
public class RolesController {
	
	@Autowired
	private RolesService rolesService;
	
	@Autowired
	private MenusService menusService;
	
	private void setModel (Model model) {
		
		model.addAttribute("roles",rolesService.findAll());
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String Forminsert(Model model){
		model.addAttribute("menus", this.menusService.findMenuForRole());
		return "system/roles/form";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(Roles roles ,Model model){
		roles.filterResource();//提交表单去除空元素
		Roles role = this.rolesService.findRolesByRolename(roles.getRolename());
		if (role != null) {
			System.out.println("角色已经存在,请更换!");
			return "system/roles/form";
		} 
		int result = this.rolesService.insert(roles);
		this.rolesService.insertRoleMenu(roles);
		if (result > 0) {
			System.out.println("保存角色成功");
		} else {
			System.out.println("保存角色失败");
		}
		return "redirect:/system/roles";
	}
	
	@RequestMapping(value="/update/{id}",method=RequestMethod.GET)
	public String Formupdate(@PathVariable("id") int id,Model model){
		System.out.println(rolesService.get(id)+"====");
		model.addAttribute("roles",rolesService.findById(id));
		model.addAttribute("role",rolesService.get(id));
		model.addAttribute("menus", this.menusService.findMenuForRole());
		return "system/roles/form";
	}
	
	@RequestMapping(value="/update/{id}",method=RequestMethod.POST)
	public String update(@PathVariable("id") int id,Roles roles,Model model) {
		roles.filterResource();//提交表单去除空元素
		System.out.println(roles);
		Roles role = this.rolesService.findRolesByRolename(roles.getRolename());
		System.out.println(role);
		if (role != null && role.getId() != id) {
			System.out.println("更新的角色名称已经存在,请更换");
			return "system/roles/form";
		}
		int result = rolesService.update(roles);
		this.rolesService.deleteRoleMenu(id);
		this.rolesService.insertRoleMenu(roles);
		if (result > 0) {
			System.out.println("更新成功");
		} else {
			System.out.println("更新失败");
			return "error/error";
		}
		return "redirect:/system/roles";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id){
		int result = this.rolesService.delete(id);
		if (result > 0) {
			System.out.println("删除成功");
		} else {
			System.out.println("删除失败");
			return "error/error";
		}
		return "redirect:/system/roles";
	}

	@RequestMapping
	public String list(Model model,Roles roles){
		model.addAttribute("page",this.rolesService.findPage(roles));
		this.setModel(model);
		return "system/roles/list";
	}
}
