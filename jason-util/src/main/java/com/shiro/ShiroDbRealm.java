package com.shiro;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import com.entity.User;
import com.service.UserService;


public class ShiroDbRealm extends AuthorizingRealm {

	@Autowired
	private UserService userService;
	
	public ShiroDbRealm() {
		super();
	}

	/**
	 * 登陆验证
	 */
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken mytoken=(UsernamePasswordToken)token;
		String username = mytoken.getUsername();
		String password = String.valueOf(mytoken.getPassword());
		User u=new User(username,password);
		User user=userService.login(u);
		if (user == null) {// 判断账户存在
			throw new UnknownAccountException();// 没找到帐号
		}
		else {
			String isLocked = user.getLocked();
			if (isLocked.equals("1")) {// 账户被锁定
				throw new LockedAccountException();
			} 
			else {
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
				String loginTime= df.format(new Date());
				userService.loginTime(loginTime, user.getUserID());
				SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user.getUserID(), password.toCharArray(), getName());
				return info;
			}

		}

	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

		String userID = (String) principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		String role=userService.getUserByID(userID).getRole();
		authorizationInfo.addRole(role);
		return authorizationInfo;

	}

	/**
	 * ��������û���Ȩ��Ϣ����.
	 */
	public void clearCachedAuthorizationInfo(String principal) {
		SimplePrincipalCollection principals = new SimplePrincipalCollection(principal, getName());
		clearCachedAuthorizationInfo(principals);
	}

	/**
	 * ��������û���Ȩ��Ϣ����.
	 */
	public void clearAllCachedAuthorizationInfo() {
		Cache<Object, AuthorizationInfo> cache = getAuthorizationCache();
		if (cache != null) {
			for (Object key : cache.keys()) {
				cache.remove(key);
			}
		}
	}

	/*
	 * @PostConstruct public void initCredentialsMatcher() {//MD5加密
	 * HashedCredentialsMatcher matcher = new
	 * HashedCredentialsMatcher(ALGORITHM); setCredentialsMatcher(matcher);
	 * setCredentialsMatcher(new CustomCredentialsMatcher()); }
	 */
}
