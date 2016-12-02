package com.txsk.dao;

import java.util.List;

import com.txsk.bean.TmParams;

public interface IBaseMapper<T> {

	/**
	 * 添加
	 * 方法名：add<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月9日-下午4:55:02 <BR>
	 * @param t 实体对象
	 * @return int<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public int add(T t);
	
	/**
	 * 根据主键id查询
	 * 方法名：findById<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月9日-下午4:55:22 <BR>
	 * @param id 主键id
	 * @return T<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public T findById(int id);
	
	/**
	 * 查询所有信息
	 * 方法名：lists<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月9日-下午4:55:42 <BR>
	 * @param params 查询通用参数
	 * @return List<T><BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public List<T> lists(TmParams params);
	
	/**
	 * 更新
	 * 方法名：update<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月9日-下午4:56:03 <BR>
	 * @param t 实体对象
	 * @return int<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public int update(T t);
	
	/*
	public int updateById(T t);
	*/
	/**
	 * 删除
	 * 方法名：del<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月9日-下午4:56:20 <BR>
	 * @param params  删除通用参数
	 * @return int<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public int del(TmParams params);
}
