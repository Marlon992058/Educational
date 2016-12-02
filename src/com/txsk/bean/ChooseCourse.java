package com.txsk.bean;

import java.util.Date;

/**
 * 学生选课实体类
 * ChooseCourse<BR>
 * 创建人:Marlon <BR>
 * 时间：2016年10月31日-下午2:39:45 <BR>
 * @version 1.0.0
 */
public class ChooseCourse {

	private Integer id;
	private String courseName;
	private String teacher;
	private Integer credit;
	private Date startTime;
	private Date endTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public Integer getCredit() {
		return credit;
	}

	public void setCredit(Integer credit) {
		this.credit = credit;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

}
