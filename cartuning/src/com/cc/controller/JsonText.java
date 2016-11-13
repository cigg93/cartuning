package com.cc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cc.entity.ItemsCustom;

//json交互测试 
@Controller
public class JsonText {
	
	//请求json(商品信息)，输出json(商品信息)  
    //@RequestBody将请求的商品信息的json串转成itemsCustom对象  
    //@ResponseBody将itemsCustom转成json格式输出  
    @RequestMapping("/requestJson")  
    public @ResponseBody String requestJson(@RequestBody ItemsCustom itemsCustom){  
        //@ResponseBody将itemsCustom转成json格式输出  
    	List<ItemsCustom> itemCustoms = new ArrayList<ItemsCustom>();
    	itemCustoms.add(itemsCustom);
        return JSON.toJSONString(itemCustoms);  
    } 
	

}
