package com.cc.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cc.base.cons.Cons;
import com.cc.dao.ItemsCustomDao;
import com.cc.entity.ItemsCustom;
import com.cc.service.ItemsCustomService;

@Service
public class ItemsCustomServiceImpl implements ItemsCustomService{
	
	@Resource
	private ItemsCustomDao itemsCustomDao;
	
	@SuppressWarnings("unchecked")
	public List<ItemsCustom> getItemCustoms(Map<String, Object> paramMap) throws Exception{
		return itemsCustomDao.selectList(Cons.ITEMCUSTOM_GETITEMCUSTOMS, paramMap);
	}
	
	@SuppressWarnings("unchecked")
	public int insertItemCustoms(ItemsCustom itemsCustom) throws Exception{
		return itemsCustomDao.insert(Cons.ITEMCUSTOM_INSERTITEMCUSTOMS, itemsCustom);
	}
}
