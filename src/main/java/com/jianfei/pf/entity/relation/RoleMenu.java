/**
  *project project-frist
  *@author changchun.wu
  *2017年8月18日下午2:35:53
  */
package com.jianfei.pf.entity.relation;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import com.jianfei.pf.base.entity.BaseEntity;

@Getter
@Setter
@ToString
public class RoleMenu extends BaseEntity{
	
	private int roleId;
	
	private int menuId;

}
