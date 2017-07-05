package com.shiro;

import java.io.IOException;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.PathMatchingFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//自定义拦截器,Session过期AJAX处理
public class SessionExpiredFilter extends PathMatchingFilter {


    @Override   
    protected boolean onPreHandle(ServletRequest  request, ServletResponse response, Object mappedValue) throws Exception {
    	Subject currentUser = SecurityUtils.getSubject();
		// 登陆的运营商名称
		String userID = currentUser.getPrincipal().toString();
		
    	if(userID==null||userID==""){
            System.out.println("session过期");
            if ("XMLHttpRequest".equalsIgnoreCase(((HttpServletRequest) request).getHeader("X-Requested-With"))) {
                onLoginFail(response);
                return false;
                }
            else{
                //普通的处理，直接给到下一个拦截器
                 return true;   
            }
        }

        return true;
    }

    //session过期给403状态码
    private void onLoginFail(ServletResponse response) throws IOException {
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        httpResponse.setStatus(403);
        httpResponse.getWriter().write("session超时了");
    }


}
