package com.cc.dao.iml;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.cc.dao.UserDao;
@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {
	
	@Resource  
    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){  
        super.setSqlSessionFactory(sqlSessionFactory);  
    }  
	
	public List selectList(String paramString, Object paramObject){
		return getSqlSession().selectList(paramString, paramObject);
	}

}
