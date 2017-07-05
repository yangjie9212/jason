package com.serviceImpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.User;
import com.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;
	
	public User login(User u) {
		return dao.login(u);
	}
	
	
	@Override
	public User getUserByID(String userID) {
		return dao.getUserByID(userID);
	}


	@Override
	public int userNameIsExist(String userName) {
		return dao.userNameIsExist(userName);
	}


	@Override
	public int updateTime(String updateTime, String userID) {
		return dao.updateTime(updateTime, userID);
	}


	@Override
	public int uploadImg(String imgSrc, String userID) {
		return dao.uploadImg(imgSrc, userID);
	}


	@Override
	public int loginTime(String loginTime, String userID) {
		return dao.loginTime(loginTime, userID);
	}


	@Override
	public int update(User user) {
		return dao.update(user);
	}
	
}
