/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午9:25:20
  */
package com.jianfei.pf.entity.system;

import com.jianfei.pf.base.entity.BaseEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Roles extends BaseEntity{

	//private Integer id;//id
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1561045154770442653L;

	private String rolename;//角色名称
	
	private Users userId;//角色与用户的关联
}
