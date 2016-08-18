package com.GB.ChinaMobileMS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		String password = user.getPassword();
		//ModeAndView Spring中的一个方便跳转类  spring 进行解析
		user = userService.login(user.getUserName(), user.getPassword());
		System.out.println("after "+user);

		
		if (user == null) {
			return new ModelAndView("forward:/").addObject("id", "user_null");
		} else if (!password.equals(user.getPassword())) {
			return new ModelAndView("forward:/").addObject("id", "psw_incorrect");
		}
//		
//		if(user == null)
//			return new ModelAndView("forward:/");
		//用户不存在，停留在当前页面；

		session.setAttribute("user", user);
		//session 整个会话中一个对象
//		return "redirect:index.jsp?username=" + user.getUserName();
//		return new ModelAndView("main").addObject("username", user.getUserName());
		return new ModelAndView("redirect:/u/main");
		//登录成功跳转页面  main页面的名字；
		//addObject 相当于request.addAttribute(key,value);
	}
	

	@SuppressWarnings("unused")
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public ModelAndView addUser(User user){
		
		String string = userService.addUser(user);
		
		
//		ModelAndView model = new ModelAndView("main");
//		model.addObject("list", "");
		
//		System.out.println("after "+user);
		
//		if(user == null)
//			return new ModelAndView("forward:/");
		
//		session.setAttribute("user", user);
		
//		return "redirect:index.jsp?username=" + user.getUserName();
		return new ModelAndView("main").addObject("username", user.getUserName());
//		return model;
	}
	
	
	

	@RequestMapping(value="/u/top", method=RequestMethod.GET)
	public ModelAndView top(User user, HttpSession session){
		return new ModelAndView("top");
	}
	
	@RequestMapping(value="/u/left", method=RequestMethod.GET)
	public ModelAndView left(User user, HttpSession session){
		return new ModelAndView("left");
	}
	@RequestMapping(value="/u/main", method=RequestMethod.GET)
	public ModelAndView main(User user,HttpSession session){
		//if(session.getAttribute("user")!=null)
		return new ModelAndView("main");
		//return new ModelAndView("redirect:/login");
	}
}
