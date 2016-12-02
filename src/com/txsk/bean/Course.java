package com.txsk.bean;

import java.util.Date;

/**
 * 课程实体类
 * Course<BR>
 * 创建人:Marlon <BR>
 * 时间：2016年10月27日-上午11:30:15 <BR>
 * @version 1.0.0
 *
 */
public class Course {

	private Integer id;
	private Integer cId;
	private String cName;
	private String teacher;
	private Integer isDelete;
	private Integer status;
	private Date createTime;
	private Integer credit;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getCredit() {
		return credit;
	}

	public void setCredit(Integer credit) {
		this.credit = credit;
	}

}
