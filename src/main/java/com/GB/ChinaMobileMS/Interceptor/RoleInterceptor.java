package com.GB.ChinaMobileMS.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class RoleInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		System.out.println("URL = " + request.getRequestURI());
		if (request.getRequestURI().equals("/system/data")) {
			if ((int) request.getSession().getAttribute("sysDataRestore") == 1)
				return true;
			else
				return false;
		} 
		else
			return true;
	}

}
