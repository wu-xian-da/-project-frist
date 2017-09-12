/**
  *project project-frist
  *@author changchun.wu
  *2017年9月11日下午5:08:42
  */
package com.jianfei.pf.controller.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.jianfei.pf.utils.shiro.Constants;


public class PowerController  extends BodyTagSupport{

	private String name;
	
	@Override
	public int doEndTag() throws JspException {
		String code = getName();
		Object power = this.pageContext.getSession().getAttribute(Constants.USER_PERMS);
		System.out.println(power+"----");
		if (power == null) {
			return SKIP_BODY;
		}
		List<String> privilege = (List<String>)power;
		//如果session中的privilege含有该权限，则显示其中的内容,否则跳过
		if (privilege.contains(code)) {
			try {
				pageContext.getOut().print(bodyContent.getString());//显示其中的内容
			} catch (IOException e) {
				e.printStackTrace();
			} 
			return EVAL_PAGE;
		}
		return SKIP_BODY;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
