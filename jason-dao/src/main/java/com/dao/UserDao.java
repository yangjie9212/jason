package com.dao;


import org.apache.ibatis.annotations.Param;

import com.entity.User;


public interface UserDao {
	//登陆
    User login(User u);
    //通过ID获取信息
    User getUserByID(String userID);
    //用户名是否存在
    int userNameIsExist(String userName);
    
    //修改用户的时候，修改更新时间
  	int updateTime(@Param("updateTime") String updateTime,@Param("userID") String userID);
  	
  	//更新用户头像
  	int uploadImg(@Param("imgSrc") String imgSrc,@Param("userID") String userID);
  	
  	//修改最近登录时间
  	int loginTime(@Param("loginTime") String loginTime,@Param("userID") String userID);
  	
  	//修改用户信息
  	int update(User user);
	
}