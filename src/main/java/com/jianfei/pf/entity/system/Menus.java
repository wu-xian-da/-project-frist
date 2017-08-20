/**
  *project project-frist
  *@author changchun.wu
  *2017年8月18日下午1:19:04
  */
package com.jianfei.pf.entity.system;

import java.util.List;

import com.jianfei.pf.base.entity.BaseEntity;
import com.jianfei.pf.entity.common.MenuType;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@EqualsAndHashCode(callSuper=true,of={Menus.ID2})
public class Menus extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6418890562777034774L;
	
	static final String ID2 = "id";
	
	private String name;//资源名称
	
	private String href;//资源路径
	
	private MenuType type;
	
	private String permission;//权限字符串
	
	private Integer sort = 1;//排序号
	
	private String icon;//图标
	
	private Menus parent;//父编号
	
	private List<Menus> childs;
}
