package com.txsk.web;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.txsk.bean.TmParams;
import com.txsk.bean.User;
import com.txsk.dao.IUserMapper;

/**
 * 学生信息管理
 * UserController<BR>
 * 作者:Marlon  <BR>
 * 时间:2016年10月5日-下午12:31:56 <BR>
 * 邮箱:18093454447@163.com  <BR>
 * @version 1.0.0  <BR>
 * @link see:  <BR>
 */
@Controller
@RequestMapping("/admin/user")
public class UserController {

	@Autowired
	private IUserMapper userMapper;
	
	/**
	 * 学生学籍信息查询列表
	 * 方法名：list<BR>
	 * 时间：2016年10月5日-下午12:32:22 <BR>
	 * @param params
	 * @return ModelAndView<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	@RequestMapping("/list")
	public ModelAndView list(TmParams params){
		ModelAndView view = new ModelAndView();
		params.setIsDelete(1);
		List<User> lists = userMapper.lists(params);
		view.addObject("users", lists);
		view.setViewName("user/list");
		return view;
	}
	
	/**
	 * 删除已毕业学生信息
	 * 方法名：del<BR>
	 * 时间：2016年10月5日-下午12:32:45 <BR>
	 * @param params
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/del",method=RequestMethod.POST)
	public String del(TmParams params){
		params.setIsDelete(0);
		int flag = userMapper.del(params);
		return flag!=0?"success":"fail";
	}
	
	/**添加操作跳转页面**/
	@RequestMapping("/add")
	public String add(){
		return "user/add";
	}
	
	/**
	 * 添加操作实现页面
	 * 方法名：adduser<BR>
	 * 时间：2016年10月5日-下午12:31:19 <BR>
	 * @param user
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/adduser",method=RequestMethod.POST)
	public String adduser(User user){
		int flag = userMapper.add(user);
		if (flag!=0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	/**添加操作跳转页面**/
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		User user = userMapper.findById(id);
		modelAndView.addObject("user", user);
		modelAndView.setViewName("user/update");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="/updateUser",method=RequestMethod.POST)
	public String updateUser(User user){
		int flag = userMapper.update(user);
		if (flag!=0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	
	@RequestMapping(value="/echarts",method=RequestMethod.GET)
	public String echarts(){
		return "course/echarts";
	}
	
	@ResponseBody
	@RequestMapping(value="/courseCharts",method=RequestMethod.POST)
	public List<HashMap<String, Object>>  getEcharts(){
		List<HashMap<String, Object>> lists = userMapper.getEcharts(); 
		return lists;
	}
	
}
