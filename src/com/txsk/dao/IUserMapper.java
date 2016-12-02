package com.txsk.dao;

import java.util.HashMap;
import java.util.List;

import com.txsk.bean.User;
/**
 * 用户接口
 * IUserMapper<BR>
 * 创建人:Marlon <BR>
 * 时间：2016年10月9日-下午4:34:40 <BR>
 * @version 1.0.0
 */
public interface IUserMapper extends IBaseMapper<User>{
	
	/**
	 * 统计选修课人数情况
	 * 方法名：getEchars<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月26日-下午3:43:11 <BR>
	 * @return User<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public List<HashMap<String, Object>> getEcharts();
}
