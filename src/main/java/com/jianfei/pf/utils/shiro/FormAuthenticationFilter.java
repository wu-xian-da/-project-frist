/**
  *project demo-m
  *@author changchun.wu
  *2017年6月28日上午10:48:02
  */
package com.jianfei.pf.utils.shiro;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.servlet.ShiroHttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

import com.jianfei.pf.entity.system.Users;
import com.jianfei.pf.service.system.UsersService;
import com.jianfei.pf.utils.http.HttpUtils;


/****
 * 表单验证(包含验证码)过滤类
 * @author changchun.wu
 */
public class FormAuthenticationFilter extends org.apache.shiro.web.filter.authc.FormAuthenticationFilter{
	
	@Autowired
	private UsersService usersService;

   protected void setFailureAttribute(ServletRequest request, AuthenticationException ae) {
    	ae.printStackTrace();
    	request.setAttribute(Constants.MESSAGE, ae.getMessage());
        super.setFailureAttribute(request, ae);
    }
    
    private String saveLogLogin(ServletRequest request,Users users,HttpServletResponse response) throws IOException{
    	ShiroHttpServletRequest httpRequest = (ShiroHttpServletRequest)request;
    	Users user = usersService.findUsersByNcikname(users.getNickname());
		if (user != null) {
			if (users.getNickname().equals(user.getNickname()) && users.getPassword().equals(user.getPassword())) {
				user.setLoginTime(new Date());
				user.setIp(HttpUtils.getRemoteAddr(httpRequest));
				usersService.updateLoginTimeAndIp(user);
				
				httpRequest.getSession().setAttribute("username", user.getUsername());
				
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
