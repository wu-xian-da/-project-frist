/**
  *project project-frist
  *@author changchun.wu
  *2017年8月4日上午9:25:20
  */
package com.jianfei.pf.entity.system;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.jianfei.pf.base.annotation.FormQuery;
import com.jianfei.pf.base.entity.BaseEntity;
import com.jianfei.pf.entity.common.MenuType;

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
	
	private List<Menus> menus;

	public String getUserList(){
	    if(this.users == null || this.users.isEmpty()){
	        return null;
	    }
	    return StringUtils.join(this.users,",");
	}
	
	/**
	 * 获取权限字符串
	 * doGetAuthorizationInfo
	 * @return
	 */
	public List<String> getUserPermissions(){
	    List<String> permissions = new ArrayList<String>();
	    for(Menus r : menus){
	        if(StringUtils.isNotBlank(r.getPermission())){
	            permissions.add(r.getPermission());
	        }
	    }
	    return permissions;
	}
	
	/**
     * 获取用户操作菜单,供前端展示
     * @return
     */
    public List<Menus> getUserMenus(){
        List<Menus> parentMenus = new ArrayList<Menus>();
        for(Menus m : menus){
            if((m.getParent() == null || m.getParent().getId() == -1) && m.getType() == MenuType.MENU){
                setChildrenMenus(m); //寻找当前菜单的子菜单
                parentMenus.add(m);
            }
        }
        return parentMenus;
    }
    
    /***
     * 获取用户操作菜单下的按钮
     * @param parent
     */
    private void setChildrenMenus(Menus parent){
        List<Menus> childs = new ArrayList<Menus>();
        for(Menus m : menus){
            if(m.getType() == MenuType.MENU && m.getParent() != null && parent.getId() == m.getParent().getId()){
                childs.add(m);
                setChildrenMenus(m);
            }
        }
        parent.setChilds(childs);
    }
	
	/**
	 * 去除表单提交时，空元素
	 */
	public void filterResource(){
	    if(menus == null){
	        return;
	    }
	    Iterator<Menus> iter = menus.iterator();
	    while(iter.hasNext()){
	        Menus r = iter.next();  
	        if(r == null || r.getId() == null){
	            iter.remove();
	        }
	    }  
	}
}
