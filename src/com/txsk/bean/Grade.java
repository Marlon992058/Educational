package com.txsk.bean;

/**
 * 成绩实体类 
 * Grade<BR>
 * 创建人:Marlon <BR>
 * 时间：2016年10月27日-上午11:30:36 <BR>
 * @version 1.0.0
 *
 */
public class Grade extends User{

	private Integer id;//主键
	private Integer math;//数学成绩
	private Integer english;//英语
	private Integer chinese;//语文
	private Integer score;//总成绩
	private Integer cGrade;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMath() {
		return math;
	}

	public void setMath(Integer math) {
		this.math = math;
	}

	public Integer getEnglish() {
		return english;
	}

	public void setEnglish(Integer english) {
		this.english = english;
	}

	public Integer getChinese() {
		return chinese;
	}

	public void setChinese(Integer chinese) {
		this.chinese = chinese;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Integer getcGrade() {
		return cGrade;
	}

	public void setcGrade(Integer cGrade) {
		this.cGrade = cGrade;
	}

}
