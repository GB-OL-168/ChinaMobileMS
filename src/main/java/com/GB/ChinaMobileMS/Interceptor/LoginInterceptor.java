package com.GB.ChinaMobileMS.Interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

//	private static final String[] IGNORE_URI={"/login"};
	
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler){
		 
		Object username =request.getSession().getAttribute("user"); 
		 
		 
		 if(request.getRequestURI().equals("/login"))
		 return true;
	        if(username == null){    
				try {
					response.sendRedirect("/");
				} catch (IOException e) {
				
					e.printStackTrace();
				}
	            return false;  
	        }else  
	            return true;
		
	}
	
	
}
