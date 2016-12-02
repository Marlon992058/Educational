package com.txsk.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.txsk.bean.ChooseCourse;
import com.txsk.bean.TmParams;
import com.txsk.bean.User;
import com.txsk.dao.IChooseCourseMapper;
import com.txsk.dao.IUserMapper;

@Controller
@RequestMapping("/admin/choose")
public class ChooseCourseController {

	@Autowired
	private IChooseCourseMapper chooseCourseMapper;
	
	@Autowired
	private IUserMapper userMapper;
	
	@RequestMapping("/list")
	public ModelAndView find(TmParams params){
		ModelAndView view = new ModelAndView();
		params.setIsDelete(1);
		List<ChooseCourse> lists = chooseCourseMapper.lists(params);
		view.addObject("courses", lists);
		view.setViewName("choose/list");
		return view;
	}
	
	/**
	 * 查询选修课
	 * 方法名：Select<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月31日-下午4:26:33 <BR>
	 * @param session
	 * @return ChooseCourse<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	@RequestMapping("/select")
	public ModelAndView Select(HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		Integer id = (Integer) session.getAttribute("SESSION_USER_ID");
		User user = userMapper.findById(id);
		Integer cId = user.getcId();
		ChooseCourse course = chooseCourseMapper.findById(cId);
		modelAndView.setViewName("choose/select");
		modelAndView.addObject("course", course);
		return modelAndView;
	}
	
	/**
	 * 学生选课功能
	 * 方法名：chooseCourse<BR>
	 * 创建人：Marlon <BR>
	 * 时间：2016年10月31日-下午5:19:29 <BR>
	 * @param params
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String chooseCourse(TmParams params){
		User user = new User();
		user.setcId(params.getcId());
		user.setId(params.getId());
		int flag = userMapper.update(user);
		if (flag!=0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	
	@RequestMapping("/add")
	public String add(){
		return "choose/add";
	}
	
	@ResponseBody
	@RequestMapping(value="/course",method=RequestMethod.POST)
	public String addCourse(ChooseCourse course){
		int flag = chooseCourseMapper.add(course);
		if(flag != 0){
			return "success";
		}else {
			return "fail";
		}
	}
	
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		ChooseCourse course = chooseCourseMapper.findById(id);
		modelAndView.addObject("course", course);
		modelAndView.setViewName("choose/update");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="/updatecourse",method=RequestMethod.POST)
	public String updateCourse(ChooseCourse course){
		int flag = chooseCourseMapper.update(course);
		if(flag != 0){
			return "success";
		}else {
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/del",method=RequestMethod.POST)
	public String delCourse(TmParams params){
		int flag = chooseCourseMapper.del(params);
		if(flag != 0){
			return "success";
		}else {
			return "fail";
		}
	}
	
}
