package com.txsk.bean;


/**
 * 管理员实体类
 * Admin<BR>
 * 创建人:Marlon <BR>
 * 时间：2016年10月9日-下午5:35:09 <BR>
 * @version 1.0.0
 *
 */
public class Admin implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String username;//姓名
	private String password;//密码
	private String account;//帐号
	private Integer rolse;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Integer getRole() {
		return rolse;
	}

	public void setRole(Integer rolse) {
		this.rolse = rolse;
	}
	

}
