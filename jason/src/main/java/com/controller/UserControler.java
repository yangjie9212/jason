package com.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.entity.User;
import com.service.UserService;

import com.utils.FileUploadUtil;
import com.utils.ImgCut;
import com.utils.MD5Encrypt;


@Controller
@RequestMapping({ "/user" })
public class UserControler {
	@Autowired
	private UserService userService;

	@RequestMapping("/toLogin")
	public String toLogin(HttpServletRequest request) {
		return "/login/login";
	}

	@RequestMapping("/index")
	public String toIndex(HttpServletRequest request) {
		return "/main/index";
	}

	@ResponseBody
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		String result = "";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UsernamePasswordToken token = new UsernamePasswordToken(username,MD5Encrypt.MD5Encode(password) );
		Subject currentUser = SecurityUtils.getSubject();
		try {
			if (!currentUser.isAuthenticated()) {
				token.setRememberMe(true);
				currentUser.login(token);
			}
			result = "success";

		} catch (UnknownAccountException e) {
			result = "用户名或者密码错误";
		} catch (LockedAccountException e) {
			result = "账号被管理员锁定了";
		}
		return result;
	}

	@RequestMapping(value = "/logout")
	@ResponseBody
	public String logout() {
		Subject currentUser = SecurityUtils.getSubject();
		String result = "1";
		currentUser.logout();
		return result;
	}

	
	// 通过Principal获取用户的信息和运营商的信息
	@ResponseBody
	@RequestMapping("/getUserByPrincipal")
	public Map<String, Object> getUserByPrincipal(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		Subject currentUser = SecurityUtils.getSubject();
		String userID = currentUser.getPrincipal().toString();
		User user = userService.getUserByID(userID);
		String success = "";
		if (user == null) {
			success = "0";
		} else {
			success = "1";
		}
		map.put("success", success);
		map.put("user", user);
		return map;
	}
	
	
	@RequestMapping(value = "/uploadHeadImage", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
	@ResponseBody
	public Map<String, Object> uploadCropper(
			@RequestParam(value = "avatar_file", required = false) MultipartFile avatar_file, String avatar_src,
			String avatar_data, HttpServletRequest request) {
		String isSuccess="";
		String message="";
		Map<String, Object> map = new HashMap<String, Object>();
		
		String realPath = request.getSession().getServletContext().getRealPath("/");
		String resourcePath = "/upload/image/";
		// 判断文件的MIMEtype
		String type = avatar_file.getContentType();
		
		if (type == null || !FileUploadUtil.allowUpload(type))
		{	
			isSuccess="0";
			message="只能上传png、jpg图像文件";
		}	
			
		else{
			String fileName = FileUploadUtil.rename(avatar_file.getOriginalFilename());
			int end = fileName.lastIndexOf(".");
			String saveName = fileName.substring(0, end);
			try {
				File dir = new File(realPath + resourcePath);
				if (!dir.exists()) {
					dir.mkdirs();
				}
				File file = new File(dir, saveName + "_src.jpg");
				avatar_file.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				isSuccess="0";
				message="上传出现异常";
			}
			String srcImagePath = realPath + resourcePath + saveName;
			JSONObject joData = (JSONObject) JSONObject.parse(avatar_data);
			// 用户经过剪辑后的图片的大小
			// 用户经过剪辑后的图片的大小
			float x = joData.getFloatValue("x");
			float y = joData.getFloatValue("y");
			float w = joData.getFloatValue("width");
			float h = joData.getFloatValue("height");
			float r = joData.getFloatValue("rotate");
			ImgCut.cutAndRotateImage(srcImagePath, (int) x, (int) y, (int) w, (int) h, (int) r);
			isSuccess="1";
			String imgSrc=request.getSession().getServletContext().getContextPath()+resourcePath+saveName+"_cut.jpg";
			Subject currentUser = SecurityUtils.getSubject();
			//登陆的运营商名称
			String userID=currentUser.getPrincipal().toString();
			//修改数据库头像src
			userService.uploadImg(imgSrc, userID);
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
			String updateTime= df.format(new Date());
			//修改数据库更新时间字段
			userService.updateTime(updateTime, userID);
			message="上传头像成功";
			map.put("imgSrc", imgSrc);
		}
		map.put("isSuccess", isSuccess);
		map.put("message", message);
		return map;
	}
	
	
	@ResponseBody
	@RequestMapping(value = { "/userNameIsExist" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public boolean userNameIsExist(HttpServletRequest request) {
		String userName= request.getParameter("userName");
		boolean isExist=true;
		Subject currentUser = SecurityUtils.getSubject();
		String userID = currentUser.getPrincipal().toString();
		String oldUserName=userService.getUserByID(userID).getUserName();
		if(oldUserName.equals(userName)){//不变
			isExist = false;
		}
		else{
			int num=userService.userNameIsExist(userName);
			if (num >= 1) {
				isExist = true;
			} 
			else {
				isExist = false;
			}
		}
		return isExist;
	}
	
	
	@ResponseBody
	@RequestMapping(value = { "/update" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String update(HttpServletRequest request,User user) {
		Subject currentUser = SecurityUtils.getSubject();
		String userID = currentUser.getPrincipal().toString();
		user.setUserID(userID);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
		String updateTime= df.format(new Date());
		userService.updateTime(updateTime, userID);
		String password=user.getPassword();
		user.setPassword(MD5Encrypt.MD5Encode(password));
		userService.update(user);
		return "1";
	}
	
}
