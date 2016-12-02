package com.txsk.dao;

import com.txsk.bean.Grade;
/**
 * 课程接口
 * ICourseMapper<BR>
 * 创建人:Marlon <BR>
 * 时间：2016年10月9日-下午4:35:35 <BR>
 * @version 1.0.0
 *
 */
public interface IGradeMapper extends IBaseMapper<Grade>{
	
	/**
	 * 查询各门成绩及格人数所占百分比
	 * 方法名：avgs<BR>
	 * 时间：2016年10月4日-下午11:39:09 <BR>
	 * @param params
	 * @return Course<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public Grade avgs();
	
	/**
	 * 计算各门课程的平均分数
	 * 方法名：percent<BR>
	 * 时间：2016年10月5日-上午12:08:12 <BR>
	 * @return Course<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public Grade percent();
	
}
