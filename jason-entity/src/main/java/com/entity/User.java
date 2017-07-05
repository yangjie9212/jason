package com.entity;

public class User {
	private String userID;// 用户编号，主键

	private String userName;// 用户名

	private String password;// 密码

	private String imgSrc;// 头像地址

	private String phone;// 电话

	private String qq;// qq号

	private String locked;// 锁定状态

	private String role;// 角色

	private String hasLover;// 是否有对象

	private String loverID;// 对象编号

	private String createTime;// 创建时间
	
	private String updateTime;// 最近更新时间
	
	private String loginTime;// 最近登录时间

	public User() {
	}

	public User(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}

	public User(String userID, String userName, String password, String imgSrc, String phone, String qq, String locked,
			String role, String hasLover, String loverID, String createTime, String updateTime, String loginTime) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.password = password;
		this.imgSrc = imgSrc;
		this.phone = phone;
		this.qq = qq;
		this.locked = locked;
		this.role = role;
		this.hasLover = hasLover;
		this.loverID = loverID;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.loginTime = loginTime;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
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

	public String getImgSrc() {
		return imgSrc;
	}

	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getLocked() {
		return locked;
	}

	public void setLocked(String locked) {
		this.locked = locked;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getHasLover() {
		return hasLover;
	}

	public void setHasLover(String hasLover) {
		this.hasLover = hasLover;
	}

	public String getLoverID() {
		return loverID;
	}

	public void setLoverID(String loverID) {
		this.loverID = loverID;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName + ", password=" + password + ", imgSrc=" + imgSrc
				+ ", phone=" + phone + ", qq=" + qq + ", locked=" + locked + ", role=" + role + ", hasLover=" + hasLover
				+ ", loverID=" + loverID + ", createTime=" + createTime + ", updateTime=" + updateTime + ", loginTime="
				+ loginTime + "]";
	}

	
}