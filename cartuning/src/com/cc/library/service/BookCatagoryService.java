package com.cc.library.service;

import java.util.List;

import com.cc.library.entity.BookCatagory;

public interface BookCatagoryService {
	/**
	 * 
	 * @return 书的类别名称列表
	 * @throws Exception
	 */
	public List<BookCatagory> getCatagorys() throws Exception;

}
