package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Bill;


public interface BillService {
	public abstract int create(Bill bill);

	public abstract int update(Bill bill);
	
	public abstract Bill getBillByBillID(String billID);
	
	public abstract int del(String billID);
	
	
	//获取我的某月的记录，参数为我的ID和月份
	public abstract List<Bill> getMyBillListByMonth(@Param("myUserID") String myUserID,@Param("time") String time);

	/*
	 * //获取对方的某月的记录，参数为我的ID和月份 public abstract List<Bill>
	 * getTaBillListByMonth(@Param("taUserID") String taUserID,@Param("time")
	 * String time);
	 */
	//获取双方的某月的记录，参数为我的ID，ta的ID和月份
	public abstract List<Bill> getAllBillListByMonth(@Param("myUserID") String myUserID,@Param("taUserID") String taUserID,@Param("time") String time);
   
}
