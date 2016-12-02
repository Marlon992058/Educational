package com.txsk.bean;

import java.sql.Date;

/**
 * 用户实体类
 * User<BR>
 * 作者:Marlon  <BR>
 * 时间:2016年10月4日-下午9:10:53 <BR>
 * 邮箱:18093454447@163.com  <BR>
 * @version 1.0.0  <BR>
 * @link see:  <BR>
 */
public class User{

	private Integer id;// 主键
	private String username;// 姓名
	private Integer age;// 年龄
	private Integer sex;// 年龄
	private Date birthday;// 出身日期
	private Date joinTime;// 入学日期
	private Integer uId;//课程id
	private Integer isDelete;//是否删除
	private Integer cId;//选修课id
	
	private Integer counts;//用于统计报表
	private String courseName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	
	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public Date getJoinTime() {
		return joinTime;
	}

	public void setJoinTime(Date joinTime) {
		this.joinTime = joinTime;
	}

	public Integer getCounts() {
		return counts;
	}

	public void setCounts(Integer counts) {
		this.counts = counts;
	}
	
}
