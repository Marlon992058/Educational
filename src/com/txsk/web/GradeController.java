package com.txsk.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.txsk.bean.Grade;
import com.txsk.bean.TmParams;
import com.txsk.dao.IGradeMapper;

@Controller
@RequestMapping("/admin/grade")
public class GradeController {

	@Autowired
	private IGradeMapper gradeMapper;
	
	@RequestMapping("/list")
	public ModelAndView find(TmParams params){
		ModelAndView view = new ModelAndView();
		params.setIsDelete(1);
		List<Grade> lists = gradeMapper.lists(params);
		Grade avgs = gradeMapper.avgs();
		Grade percent = gradeMapper.percent();
		view.addObject("grades", lists);
		view.addObject("avgs", avgs);
		view.addObject("percent", percent);
		view.setViewName("grade/list");
		return view;
	}
	
	@RequestMapping("/index")
	public ModelAndView index(TmParams params){
		ModelAndView modelAndView = new ModelAndView();
		params.setIsDelete(0);
		return modelAndView;
	}
	
	@RequestMapping(value="/update/{id}")
	public ModelAndView toUpdate(@PathVariable("id")Integer id,TmParams params){
		params.setIsDelete(1);
		params.setId(id);
		ModelAndView modelAndView = new ModelAndView();
		List<Grade> lists = gradeMapper.lists(params);
		modelAndView.addObject("map", (lists!=null&&lists.size()>0)?lists.get(0):null);
		modelAndView.setViewName("grade/update");
		return modelAndView;
	}
	
	
	
}
