package com.cc.dao;

import java.util.List;

public interface ItemsCustomDao {
	
	public List selectList(String paramString, Object paramObject);
	
	public int insert(String paramString, Object paramObject);
	
}
