package com.cc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cc.entity.ItemsCustom;

//json�������� 
@Controller
public class JsonText {
	
	//����json(��Ʒ��Ϣ)�����json(��Ʒ��Ϣ)  
    //@RequestBody���������Ʒ��Ϣ��json��ת��itemsCustom����  
    //@ResponseBody��itemsCustomת��json��ʽ���  
    @RequestMapping("/requestJson")  
    public @ResponseBody String requestJson(@RequestBody ItemsCustom itemsCustom){  
        //@ResponseBody��itemsCustomת��json��ʽ���  
    	List<ItemsCustom> itemCustoms = new ArrayList<ItemsCustom>();
    	itemCustoms.add(itemsCustom);
        return JSON.toJSONString(itemCustoms);  
    } 
	

}
