package com.txsk.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.txsk.bean.Admin;
import com.txsk.bean.TmParams;
import com.txsk.dao.IAdminMapper;
import com.txsk.service.IAdminService;

@Service
public class AdminServiceImpl implements IAdminService{

	@Autowired
	private IAdminMapper adminMapper;
	
	@Override
	public Admin getLogin(TmParams params) {
		return adminMapper.getLogin(params);
	}

}
