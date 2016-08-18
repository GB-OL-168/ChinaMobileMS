package com.GB.ChinaMobileMS.controller;


import java.util.HashMap;
import java.util.List;

import java.util.Map;

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

		session.setAttribute("user", user);
		return new ModelAndView("redirect:/u/main");
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public ModelAndView addUser(User user){
		

		String string = userService.addUser(user);

		return  GetUserList();
	}
	
	
//	登出
	@RequestMapping("/logout2")
	public ModelAndView logout(HttpSession session){
		System.out.println("退出成功");	
		session.invalidate();
		return new ModelAndView("redirect:/login.jsp");
	}

	
	@RequestMapping(value="/u/top", method=RequestMethod.GET)
	public ModelAndView top(){
//		User user=(User) session.getAttribute("user");
//		session.setAttribute("user", user);
		return new ModelAndView("top");
	}
	
	@RequestMapping(value="/u/left", method=RequestMethod.GET)
	public ModelAndView left(HttpSession session){
		return new ModelAndView("left");
	}
	@RequestMapping(value="/u/main", method=RequestMethod.GET)
	public ModelAndView main(HttpSession session){
		//if(session.getAttribute("user")!=null)
		return new ModelAndView("main");
		//return new ModelAndView("redirect:/login");
	}
	
	public  ModelAndView GetUserList()
	{
		List<User> listUser = userService.listUser();
		
//		ModelAndView model = new ModelAndView("main");
//		System.out.println("User2 = " +listUser.get(2));
//		model.addObject("listUser", listUser);
		
		Map map =new HashMap();
		map.put("listUser",listUser);//userlist是个Arraylist之类的  

		return new ModelAndView("/function/system-user",map);
//		model.addAllObjects();
//		
//
//
//		model.setViewName("/function/system-user");
//		
//		return model;
		
	}
}
