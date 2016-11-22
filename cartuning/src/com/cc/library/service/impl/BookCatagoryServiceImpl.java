package com.cc.library.service.impl;

import java.util.List;

import com.cc.base.cons.SqlCons;
import com.cc.base.service.BaseService;
import com.cc.library.entity.BookCatagory;
import com.cc.library.service.BookCatagoryService;


public class BookCatagoryServiceImpl extends BaseService implements BookCatagoryService {
	/**
	 * 
	 * @return 书的类别名称列表
	 * @throws Exception
	 */
	
	@SuppressWarnings("unchecked")
	public List<BookCatagory> getCatagorys() throws Exception{
		return (List<BookCatagory>)getBaseDao().selectList(SqlCons.CATAGORY_LIST);
	}
}
