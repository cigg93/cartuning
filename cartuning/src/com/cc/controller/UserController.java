package com.cc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cc.entity.User;
import com.cc.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Resource
	private UserService userServie;
	
	
	@RequestMapping(value="/login.do", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String login(@RequestBody User user) throws Exception {
		User usr = null;
		List<User> usrs = null;
		try {
			usrs = userServie.login(user);
			if(usrs.size() != 0 && usrs != null){
				usr = usrs.get(0);
				usr.setMsg("成功");
			}
			else{
				usr = new User();
				usr.setMsg("失败");
			}
		} catch (Exception e) {
			e.printStackTrace();
			usr = new User();
			usr.setMsg("失败");
		}
		
		return JSON.toJSONString(usr);
	}
	
	
}
