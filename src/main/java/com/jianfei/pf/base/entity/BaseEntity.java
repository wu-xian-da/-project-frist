/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午10:08:46
  */
package com.jianfei.pf.base.entity;

import java.io.Serializable;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@SuppressWarnings("serial")
@Getter
@Setter
@EqualsAndHashCode(of={"id"})
public class BaseEntity implements Serializable{

	private Integer id;
}
