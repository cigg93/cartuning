package com.cc.service;

import java.util.List;
import java.util.Map;

import com.cc.entity.ItemsCustom;

public interface ItemsCustomService {
	
	public List<ItemsCustom> getItemCustoms(Map<String, Object> paramMap) throws Exception;
	
	public int insertItemCustoms(ItemsCustom itemsCustom) throws Exception;

}
