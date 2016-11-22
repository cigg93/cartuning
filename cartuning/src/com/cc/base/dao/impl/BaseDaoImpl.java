package com.cc.base.dao.impl;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.cc.base.dao.BaseDao;

/**
 * 公共DAO的具体实现
 * @author Administrator
 *
 */
@Repository
public class BaseDaoImpl extends SqlSessionDaoSupport implements BaseDao {

	/**
	 * 新增
	 * @param sql sql
	 * @return 
	 * @throws Exception
	 */
	@Override
	public int insert(String sql) throws Exception {
		return getSqlSession().insert(sql);
	}

	/**
	 * 新增
	 * @param sql sql
	 * @param object
	 * @return 
	 * @throws Exception
	 */
	@Override
	public int insert(String sql, Object object) throws Exception {
		return getSqlSession().insert(sql,object);
	}

	/**
	 * 查询
	 * @param sql
	 * @param object
	 * @return
	 * @throws Exception
	 */
	@Override
	public Object selectOne(String sql) throws Exception {
		return getSqlSession().selectOne(sql);
	}

	/**
	 * 更新
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	@Override
	public Object selectOne(String sql, Object object) throws Exception {
		return getSqlSession().selectOne(sql,object);
	}

	/**
	 * 更新
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	@Override
	public int update(String sql) throws Exception {
		return getSqlSession().update(sql);
	}

	/**
	 * 更新
	 * @param sql
	 * @param object
	 * @return
	 * @throws Exception
	 */
	@Override
	public int update(String sql, Object object) throws Exception {
		return getSqlSession().update(sql,object);
	}

	/**
	 * 查询列表
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	@Override
	public Object selectList(String sql) {
		return getSqlSession().selectList(sql);
	}

	/**
	 * 查询列表
	 * @param sql
	 * @param object
	 * @return
	 * @throws Exception
	 */
	@Override
	public Object selectList(String sql, Object object) {
		return getSqlSession().selectList(sql,object);
	}

	/**
	 * 删除
	 * @param sql
	 * @return
	 */
	@Override
	public int delete(String sql) {
		return getSqlSession().delete(sql);
	}

	/**
	 * 删除
	 * @param sql
	 * @param object
	 * @return
	 */
	@Override
	public int delete(String sql, Object object) {
		return getSqlSession().delete(sql,object);
	}
	
	
	

}
