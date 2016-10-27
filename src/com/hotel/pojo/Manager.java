package com.hotel.pojo;

/**
 * @desc	后台管理员
 * @author	ljt
 * @time	2015-8-7 上午10:01:30
 */
public class Manager {
	
	private Integer id;
	
	private String userName;
	
	private String password;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
