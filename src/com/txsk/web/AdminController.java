package com.txsk.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.txsk.bean.Admin;
import com.txsk.bean.TmParams;
import com.txsk.service.IAdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private IAdminService adminService;
	
	public String list(TmParams params,Model model){
		Admin admin = adminService.getLogin(params);
		model.addAttribute(admin);
		return "admin/list";
	}
	
}
