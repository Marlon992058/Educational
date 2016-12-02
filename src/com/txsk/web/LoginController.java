package com.txsk.web;

import static com.txsk.utils.TzConstant.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.txsk.bean.Admin;
import com.txsk.bean.TmParams;
import com.txsk.dao.IAdminMapper;
import com.txsk.utils.TmStringUtils;

@Controller
public class LoginController {

	@Autowired
	private IAdminMapper adminMapper;

	@RequestMapping(value={"/login","/"})
	public String login() {
		return "login";
	}
	
	@RequestMapping(value={"/admin/index"})
	public String index() {
		return "index";
	}

	/**
	 * 用户登录
	 * 方法名：logined<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月9日-下午5:46:19 <BR>
	 * @param session
	 * @param request
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value = "/logined", method = RequestMethod.POST)
	public String logined(HttpSession session, HttpServletRequest request,TmParams params) {
		String account = params.getAccount();
		String password = params.getPassword();
		if (TmStringUtils.isNotEmpty(account)
				&& TmStringUtils.isNotEmpty(password)) {
			Admin admin = adminMapper.getLogin(params);
			if (admin != null) {
				session.setAttribute(SESSION_USER, admin);
				session.setAttribute(SESSION_USER_ID, admin.getId());
				session.setAttribute(SESSION_USER_ROLE, admin.getRole());
				session.setAttribute(SESSION_USER_NAME, admin.getUsername());
				session.setAttribute(SESSION_USER_ACCOUNT, admin.getAccount());
				return "success";
			} else {
				return "error";
			}
		} else {
			return "null";
		}
	}
	
	@RequestMapping("/loginout")
	public String loginOut(HttpSession session){
		if(session!=null)session.invalidate();
		return "redirect:login";
	}
}
