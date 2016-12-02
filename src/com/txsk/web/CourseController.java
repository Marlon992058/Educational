package com.txsk.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.txsk.bean.Course;
import com.txsk.bean.TmParams;
import com.txsk.dao.ICourseMapper;

@Controller
@RequestMapping("/admin/course")
public class CourseController {

	@Autowired
	private ICourseMapper courseMapper;
	
	@RequestMapping("/list")
	public ModelAndView find(TmParams params){
		ModelAndView view = new ModelAndView();
		params.setIsDelete(1);
		List<Course> lists = courseMapper.lists(params);
		view.addObject("courses", lists);
		view.setViewName("course/list");
		return view;
	}
	
	@RequestMapping("/add")
	public String add(){
		return "course/add";
	}
	
	@ResponseBody
	@RequestMapping(value="/addcourse",method=RequestMethod.POST)
	public String addCourse(Course course){
		int flag = courseMapper.add(course);
		if(flag != 0){
			return "success";
		}else {
			return "fail";
		}
	}
	
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		Course course = courseMapper.findById(id);
		modelAndView.addObject("course", course);
		modelAndView.setViewName("course/update");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="/updatecourse",method=RequestMethod.POST)
	public String updateCourse(Course course){
		int flag = courseMapper.update(course);
		if(flag != 0){
			return "success";
		}else {
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/del",method=RequestMethod.POST)
	public String delCourse(TmParams params){
		int flag = courseMapper.del(params);
		if(flag != 0){
			return "success";
		}else {
			return "fail";
		}
	}
	
}
