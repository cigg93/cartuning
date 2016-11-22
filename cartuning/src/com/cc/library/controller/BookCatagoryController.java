package com.cc.library.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cc.base.controller.BaseController;
import com.cc.library.entity.BookCatagory;

/**
 * 书的类别
 * @author ccc
 *
 */
@RequestMapping("/catagory")
@Controller
public class BookCatagoryController extends BaseController {
	
	/**
	 * 获取书的类别名称列表
	 * @return 书的类别名称列表
	 * @throws Exception
	 */
	@RequestMapping(value="/getCatagorys.do", produces="text/html;charset=utf-8", method=RequestMethod.GET)
	@ResponseBody
	public String getCatagorys() throws Exception {
		
		List<BookCatagory> catagories = null;
		
		try{
			catagories = bookCatagoryService.getCatagorys();
		}
		catch(Exception e){
			e.printStackTrace();
			catagories = new ArrayList<>();
		}
		return JSON.toJSONString(catagories);
		
	}
	

}
