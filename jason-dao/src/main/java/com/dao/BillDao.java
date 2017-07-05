package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Bill;


public interface BillDao {
    int create(Bill bill);
    
    int update(Bill bill);
    
    int del(String billID);
    
    Bill getBillByBillID(String billID);
    //获取我的某月的记录，参数为我的ID和月份
    List<Bill> getMyBillListByMonth(@Param("myUserID") String myUserID,@Param("time") String time);
   
    //获取双方的某月的记录，参数为我的ID，ta的ID和月份
    List<Bill> getAllBillListByMonth(@Param("myUserID") String myUserID,@Param("taUserID") String taUserID,@Param("time") String time);
   
	
}