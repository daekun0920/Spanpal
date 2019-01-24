package com.daekun.spanpal.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		try {
			HttpSession session = request.getSession();

			if (session.getAttribute("user_id") == null || session.getAttribute("user_id") == "") {
				PrintWriter writer = response.getWriter();
				response.setContentType("text/html");
				response.setCharacterEncoding("utf-8");
				writer.println("<sciprt>alert('you are not authorized to this page.');</script>");
				response.sendRedirect("/");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}
}
