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
	//在Spring中生成set get方法 自动获取userService对象
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(User user, HttpSession session){
		//ModeAndView Spring中的一个方便跳转类  spring 进行解析
		user = userService.login(user.getUserName(), user.getPassword());
		System.out.println("after "+user);
		
		if(user == null)
			return new ModelAndView("forward:/");
		//用户不存在，停留在当前页面；
		session.setAttribute("user", user);
		//session 整个会话中一个对象
//		return "redirect:index.jsp?username=" + user.getUserName();
		return new ModelAndView("main").addObject("username", user.getUserName());
		//登录成功跳转页面  main页面的名字；
		//addObject 相当于request.addAttribute(key,value);
	}
	
	@RequestMapping(value="/top", method=RequestMethod.GET)
	public ModelAndView top(User user, HttpSession session){
		
		return new ModelAndView("top");
	}
	
	@RequestMapping(value="/left", method=RequestMethod.GET)
	public ModelAndView left(User user, HttpSession session){
		
		return new ModelAndView("left");
	}
}
