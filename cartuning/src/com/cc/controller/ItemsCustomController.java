package com.cc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cc.base.entity.Result;
import com.cc.entity.ItemsCustom;

import com.cc.service.*;

@Controller
@RequestMapping("/itemsCustom")
public class ItemsCustomController {
	
	@Resource
	private ItemsCustomService itemsCustomService;
	
	@RequestMapping(value = "/itemsCustoms.do", produces = "text/html;charset=UTF-8", method=RequestMethod.GET)
	@ResponseBody
    public String getItemsCustoms(HttpServletRequest request) throws Exception {
		
    	List<ItemsCustom> itemCustoms = null;
    	String q = null;
    	Map<String, Object> paramMap = null;
    	try {
    		paramMap = new HashMap<String, Object>();
    		q = new String(request.getParameter("q").getBytes("iso-8859-1"), "utf-8");
    		paramMap.put("q", q);
    		itemCustoms = itemsCustomService.getItemCustoms(paramMap);
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
        return JSON.toJSONString(itemCustoms);  
    }
	
	@RequestMapping(value = "/insertItemCustoms.do", produces = "text/html;charset=UTF-8", method=RequestMethod.POST)
	@ResponseBody
    public String insertItemCustoms(@RequestBody ItemsCustom itemsCustom) throws Exception {
		int id = 0;
		Result result = new Result();
    	try {
    		id = itemsCustomService.insertItemCustoms(itemsCustom);
    		if(id != 0){
    			result.setResult(Result.SUCCESS);
    			result.setMsg("成功");
    		}
    		else{
    			result.setResult(Result.FAILIURE);
    			result.setMsg("失败");
    		}
    	} catch(Exception e) {
    		e.printStackTrace();
    		result.setResult(Result.FAILIURE);
			result.setMsg("失败");
    	}
    	return JSON.toJSONString(result);
          
    }
	
	
	
}
