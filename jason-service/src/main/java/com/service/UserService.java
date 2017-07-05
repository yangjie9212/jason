package com.service;
import org.apache.ibatis.annotations.Param;
import com.entity.User;

public interface UserService {
	public abstract User login(User u);
	public abstract User getUserByID(String userID);
	public abstract int userNameIsExist(String userName);
	public abstract int updateTime(@Param("updateTime") String updateTime,@Param("userID") String userID);
	public abstract int uploadImg(@Param("imgSrc") String imgSrc,@Param("userID") String userID);
	public abstract int loginTime(@Param("loginTime") String loginTime,@Param("userID") String userID);
	public abstract int update(User user);
}
