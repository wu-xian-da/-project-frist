/**
  *project project-frist
  *@author changchun.wu
  *2017年8月1日下午2:31:15
  */
package com.jianfei.pf.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jianfei.pf.entity.system.Users;
import com.jianfei.pf.service.system.RolesService;
import com.jianfei.pf.service.system.UsersService;
import com.jianfei.pf.utils.http.HttpUtils;
import com.jianfei.pf.utils.shiro.Constants;
import com.jianfei.pf.utils.shiro.SessionUtils;

@Controller
@RequestMapping(value="/")
public class LoginController {
	
	@Autowired
	private UsersService usersService;
	
	@Autowired
	private RolesService rolesService;
	
	@RequestMapping
	public String loginPage(){
		return "login";
	}
	
	@GetMapping("/login")
	public String loginForm(Model model){
		return "login";
	}
	
	@PostMapping("/login")
	public String loginUsers(Model model,Users users,HttpServletRequest request,HttpServletResponse response) throws IOException{
		Users user = usersService.findUsersByNcikname(users.getNickname());
		if (user != null) {
			if (users.getNickname().equals(user.getNickname()) && users.getPassword().equals(user.getPassword())) {
				user.setLoginTime(new Date());
				user.setIp(HttpUtils.getRemoteAddr(request));
				usersService.updateLoginTimeAndIp(user);
				request.getSession().setAttribute("username", user.getUsername());
				//获取用户角色权限
				user.setRole(this.rolesService.getRoleMenus(user.getRole().getId()));
				//权限菜单的获取
		        SessionUtils.setSessionAttribute(Constants.USER_MENUS, user.getRole().getUserMenus());
		        //权限标识字符串的获取
		        SessionUtils.setSessionAttribute(Constants.USER_PERMS, user.getRole().getUserPermissions());
		        
		        //request.getSession().setAttribute("menus_buttons",user.getRole().getUserPermissions());
		        
				System.out.println("登录成功");
				
				return "layout/main";
			} else if (users.getNickname().equals(user.getNickname()) && !users.getPassword().equals(user.getPassword())){
				response.sendRedirect("http://localhost:8080/system?error2=password");
				return "login";
			} else {
				response.sendRedirect("http://localhost:8080/system?error1=nickname");
				return "login";
			}
		}else {
			System.out.println("登录失败");
			response.sendRedirect("http://localhost:8080/system?error3=fail");
			return "login";
		}
	}
}
