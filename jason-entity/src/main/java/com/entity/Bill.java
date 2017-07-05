package com.entity;

public class Bill {
	private String billID;		//编号
	private String time;		//时间
	private String type;		//类型（支出、收入）
	private String purpose;		//用途
	private String amount;		//金额	
	private String remark;		//备注
	private String userID;		//外键，谁生成的

	public Bill() {
		super();
	}

	public Bill(String billID, String time, String type, String purpose, String amount, String remark, String userID) {
		super();
		this.billID = billID;
		this.time = time;
		this.type = type;
		this.purpose = purpose;
		this.amount = amount;
		this.remark = remark;
		this.userID = userID;
	}

	public String getBillID() {
		return billID;
	}

	public void setBillID(String billID) {
		this.billID = billID;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	@Override
	public String toString() {
		return "Bill [billID=" + billID + ", time=" + time + ", type=" + type + ", purpose=" + purpose + ", amount="
				+ amount + ", remark=" + remark + ", userID=" + userID + "]";
	}

}
