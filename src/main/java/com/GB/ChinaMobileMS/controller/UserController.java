package com.GB.ChinaMobileMS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(User user, HttpSession session){
		
		user = userService.login(user.getUserName(), user.getPassword());
		System.out.println("after "+user);
		
		if(user == null)
			return new ModelAndView("forward:/");
		
		session.setAttribute("user", user);
		
//		return "redirect:index.jsp?username=" + user.getUserName();
		return new ModelAndView("index").addObject("username", user.getUserName());
	}
}
