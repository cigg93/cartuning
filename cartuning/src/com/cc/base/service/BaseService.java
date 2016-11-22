package com.cc.base.service;

import javax.annotation.Resource;

import com.cc.base.dao.BaseDao;

/**
 * 公共Service
 * @author Administrator
 *
 */
public class BaseService {
	@Resource
	private BaseDao baseDao;

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}
	
	

}
