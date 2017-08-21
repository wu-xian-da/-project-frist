/**
  *project demo-m
  *@author changchun.wu
  *2017年6月28日上午10:36:30
  */
package com.jianfei.pf.utils.shiro;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.filter.mgt.DefaultFilterChainManager;
import org.apache.shiro.web.filter.mgt.NamedFilterList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.jianfei.pf.entity.system.Menus;
import com.jianfei.pf.service.system.MenusService;

@Service
@Lazy
public class ShiroFilterChainManager {
	
	@Autowired
	private DefaultFilterChainManager filterChainManager;
	
	@Autowired
	private MenusService menuService;
	
	private Map<String, NamedFilterList> defaultFilterChains;
	
	public void init(){
		defaultFilterChains = new HashMap<String, NamedFilterList>(filterChainManager.getFilterChains());
		List<Menus> menus = this.menuService.findAll();
		initFilterChains(menus);
	}

	public void initFilterChains(List<Menus> menus) {
		filterChainManager.getFilterChains().clear();
        
        if (defaultFilterChains != null) {
            filterChainManager.getFilterChains().putAll(defaultFilterChains);
        }
        
        for (Menus m : menus) {
            if (StringUtils.isNotBlank(m.getPermission()) && StringUtils.isNotBlank(m.getHref())) {
                filterChainManager.addToChain(m.getHref(), "perms", m.getPermission());
            }
        }
        filterChainManager.addToChain("/system/**", "user");
	}
}
