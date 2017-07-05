package com.shiro;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.web.filter.PathMatchingFilter;
import org.apache.shiro.web.util.WebUtils;

import com.alibaba.druid.support.json.JSONUtils;

public class FormLoginFilter extends PathMatchingFilter {
	private String loginUrl = "/user/toLogin";

	@Override
	protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue)
			throws Exception {
		if (SecurityUtils.getSubject().isAuthenticated()) {
			return true;// 已经登录过
		} else {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse resp = (HttpServletResponse) response;
			if (req.getHeader("x-requested-with") != null
					&& req.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
				resp.setContentType("application/json;charset=UTF-8");
				PrintWriter writer = response.getWriter();
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("isSessionTimeOut", "true");
				writer.write(JSONUtils.toJSONString(map));
				writer.flush();
				writer.close();
			} else {
				saveRequestAndRedirectToLogin(req, resp);
			}
			return false;

		}

	}

	private void saveRequestAndRedirectToLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		WebUtils.saveRequest(req);
		WebUtils.issueRedirect(req, resp, loginUrl);
	}

}
