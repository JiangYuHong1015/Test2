package com.bdqn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bdqn.pojo.User;
import com.bdqn.tools.Constants;

public class SysInterceptor extends HandlerInterceptorAdapter {

	private Logger logger = Logger.getLogger(SysInterceptor.class);

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// 拿到session
		HttpSession session = request.getSession();
		// 通过session拿到user对象
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		
		if (user == null) {
			response.sendRedirect(request.getContextPath()+"/error.jsp");
			return false;
		}
		return true;
	}

}
