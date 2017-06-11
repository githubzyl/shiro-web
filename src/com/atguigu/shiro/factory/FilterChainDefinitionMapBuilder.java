package com.atguigu.shiro.factory;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {
	
	private final static String PAGE_DIR = "/pages";

	public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		
		map.put(PAGE_DIR+"/login.jsp", "anon");
		map.put("/shiro/login", "anon");
		map.put("/shiro/logout", "logout");
		map.put(PAGE_DIR+"/user.jsp", "authc,roles[user]");
		map.put(PAGE_DIR+"/admin.jsp", "authc,roles[admin]");
		map.put(PAGE_DIR+"/list.jsp", "user");
		
		map.put("/**", "authc");
		
		return map;
	}
	
}
