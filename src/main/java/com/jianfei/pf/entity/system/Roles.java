/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午9:25:20
  */
package com.jianfei.pf.entity.system;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.jianfei.pf.base.annotation.FormQuery;
import com.jianfei.pf.base.entity.BaseEntity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Roles extends BaseEntity{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1561045154770442653L;

	@FormQuery
	private String rolename;//角色名称
	
	private List<String> users;

	public String getUserList(){
	    if(this.users == null || this.users.isEmpty()){
	        return null;
	    }
	    return StringUtils.join(this.users,",");
	}
}
