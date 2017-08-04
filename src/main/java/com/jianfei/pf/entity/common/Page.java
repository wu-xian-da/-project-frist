/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午10:18:50
  */
package com.jianfei.pf.entity.common;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Page<T> {
	
	private T entity; //查询对象

}
