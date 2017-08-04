/**
  *project project-frist
  *@author changchun.wu
  *2017年7月26日下午2:18:33
  */
package com.jianfei.pf.entity.system;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import com.jianfei.pf.base.entity.BaseEntity;
import com.jianfei.pf.entity.common.Gender;

@Getter
@Setter
@ToString
public class Users extends BaseEntity{
	
	//private Integer id;//id
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8552769126160856638L;

	private String username;//用户名
	
	private String password;//密码
	
	private String nickname;//昵称
	
	private Gender gender;//性别
	
	private int age;//年龄
	
	private Date createTime;//创建时间
	
	private Date loginTime;//最近登录时间
	
	private String ip;//登录IP

}
