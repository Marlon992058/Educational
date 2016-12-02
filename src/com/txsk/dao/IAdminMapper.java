package com.txsk.dao;

import com.txsk.bean.Admin;
import com.txsk.bean.TmParams;

public interface IAdminMapper extends IBaseMapper<Admin>{

	public Admin getLogin(TmParams params);
}
