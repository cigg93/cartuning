package com.cc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cc.base.cons.Cons;
import com.cc.dao.UserDao;
import com.cc.entity.User;
import com.cc.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Resource
	private UserDao userDao;
	
	@SuppressWarnings("unchecked")
	public List login(User user) throws Exception{
		return userDao.selectList(Cons.USER_LOGIN, user);
	}

}
