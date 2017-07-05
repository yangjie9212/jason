package com.utils;
/*package com.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

*//**
 * @author WMS
 * 
 *//*
public class CaptchaFormAuthenticationFilter extends FormAuthenticationFilter {

	private static final Logger log = LoggerFactory
			.getLogger(CaptchaFormAuthenticationFilter.class);

	
	 *	��Ҫ����Ե���ɹ��Ĵ���������������ͷ��AJAX��֮�䷵��JSON�ַ�����
	 
	@Override
	protected boolean onLoginSuccess(AuthenticationToken token,
			Subject subject, ServletRequest request, ServletResponse response)
			throws Exception {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;

		if (!"XMLHttpRequest".equalsIgnoreCase(httpServletRequest
				.getHeader("X-Requested-With"))) {// ����ajax����
			issueSuccessRedirect(request, response);
		} else {
			httpServletResponse.setCharacterEncoding("UTF-8");
			PrintWriter out = httpServletResponse.getWriter();
			out.println("{success:true,message:'����ɹ�'}");
			out.flush();
			out.close();
		}
		return false;
	}

	*//**
	 * ��Ҫ�Ǵ������ʧ�ܵķ���
	 *//*
	@Override
	protected boolean onLoginFailure(AuthenticationToken token,
			AuthenticationException e, ServletRequest request,
			ServletResponse response) {
		if (!"XMLHttpRequest".equalsIgnoreCase(((HttpServletRequest) request)
				.getHeader("X-Requested-With"))) {// ����ajax����
			setFailureAttribute(request, e);
			return true;
		}
		try {
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			String message = e.getClass().getSimpleName();
			if ("IncorrectCredentialsException".equals(message)) {
				out.println("{success:false,message:'�������'}");
			} else if ("UnknownAccountException".equals(message)) {
				out.println("{success:false,message:'�˺Ų�����'}");
			} else if ("LockedAccountException".equals(message)) {
				out.println("{success:false,message:'�˺ű�����'}");
			} else {
				out.println("{success:false,message:'δ֪����'}");
			}
			out.flush();
			out.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return false;
	}

	*//**
	 * �������󶼻ᾭ���ķ�����
	 *//*
	@Override
	protected boolean onAccessDenied(ServletRequest request,
			ServletResponse response) throws Exception {

		if (isLoginRequest(request, response)) {
			if (isLoginSubmission(request, response)) {
				if (log.isTraceEnabled()) {
					log.trace("Login submission detected.  Attempting to execute login.");
				}
				if ("XMLHttpRequest"
						.equalsIgnoreCase(((HttpServletRequest) request)
								.getHeader("X-Requested-With"))) {// ����ajax����
					String vcode = request.getParameter("vcode");
					HttpServletRequest httpservletrequest = (HttpServletRequest) request;
					String vvcode = (String) httpservletrequest
							.getSession()
							.getAttribute(
									com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
					if (vvcode == null || "".equals(vvcode)
							|| !vvcode.equals(vcode)) {
						response.setCharacterEncoding("UTF-8");
						PrintWriter out = response.getWriter();
						out.println("{success:false,message:'��֤�����'}");
						out.flush();
						out.close();
						return false;
					}
				}
				return executeLogin(request, response);
			} else {
				if (log.isTraceEnabled()) {
					log.trace("Login page view.");
				}
				// allow them to see the login page ;)
				return true;
			}
		} else {
			if (log.isTraceEnabled()) {
				log.trace("Attempting to access a path which requires authentication.  Forwarding to the "
						+ "Authentication url [" + getLoginUrl() + "]");
			}
			if (!"XMLHttpRequest"
					.equalsIgnoreCase(((HttpServletRequest) request)
							.getHeader("X-Requested-With"))) {// ����ajax����
				saveRequestAndRedirectToLogin(request, response);
			} else {
				response.setCharacterEncoding("UTF-8");
				PrintWriter out = response.getWriter();
				out.println("{message:'login'}");
				out.flush();
				out.close();
			}
			return false;
		}
	}
}*/