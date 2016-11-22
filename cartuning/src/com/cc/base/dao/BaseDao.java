package com.cc.base.dao;

/**
 * 公共DAO接口
 * @author Administrator
 *
 */
public interface BaseDao {
	
	/**
	 * 新增
	 * @param sql sql
	 * @return 
	 * @throws Exception
	 */
	public int insert(String sql) throws Exception;
	
	/**
	 * 新增
	 * @param sql sql
	 * @param object
	 * @return 
	 * @throws Exception
	 */
	public int insert(String sql, Object object) throws Exception;
	
	/**
	 * 查询
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	public Object selectOne(String sql) throws Exception;
	
	/**
	 * 查询
	 * @param sql
	 * @param object
	 * @return
	 * @throws Exception
	 */
	public Object selectOne(String sql, Object object) throws Exception;
	
	/**
	 * 更新
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	public int update(String sql) throws Exception;
	
	/**
	 * 更新
	 * @param sql
	 * @param object
	 * @return
	 * @throws Exception
	 */
	public int update(String sql, Object object) throws Exception;
	
	/**
	 * 查询列表
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	public Object selectList(String sql);

	/**
	 * 查询列表
	 * @param sql
	 * @param object
	 * @return
	 * @throws Exception
	 */
	public Object selectList(String sql, Object object);
	
	/**
	 * 删除
	 * @param sql
	 * @return
	 */
	public int delete(String sql);

	/**
	 * 删除
	 * @param sql
	 * @param object
	 * @return
	 */
	public int delete(String sql, Object object);
	
	

}
