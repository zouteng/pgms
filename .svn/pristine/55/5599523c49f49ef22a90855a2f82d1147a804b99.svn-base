package com.sgm.interceptors;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.sgm.domain.TsUser;
import com.sgm.service.UserService;
import com.sgm.util.RequestUtil;

public class AuthInterceptor implements HandlerInterceptor {

	@Autowired
	private UserService userService;

	/**
	 * 在调用controller具体方法前拦截
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub

		String requestPath = RequestUtil.getRequestPath(request);// 用户访问的资源地址
		System.out.println("拦截器中：" + requestPath);

		/*
		 * Set<String> testaction=new HashSet<String>();
		 * testaction.add("/login"); testaction.add("/userManage/verifyUser");
		 * testaction.add("/userManage");
		 * testaction.add("/roleManage/getAllRoles");
		 * testaction.add("/userManage/datagrid");
		 * 
		 * if(testaction.contains(requestPath)){ return true; }
		 */

		TsUser user = (TsUser) request.getSession().getAttribute("user");
		
		if (user == null) {
			forward("您没有登录或登录超时，请重新登录", request, response);
			return false;
		}
		System.out.println("拦截器中的用户名" + user.getLoginName()+user.getUserId());
		
		if (userService.checkAuth(user.getUserId(), requestPath)) {
			return true;
		} else {
			forward("您没有权限，请联系管理员给您赋予相应权限！", request, response);
			// response.sendRedirect("/login");
			return false;
		}
	}

	/**
	 * 在调用controller具体方法后拦截
	 */
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	/**
	 * 完成页面的render后调用
	 */
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

	private void forward(String msg, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("/WEB-INF/views/error/authMsg.jsp").forward(request, response);
	}

}
