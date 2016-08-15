package com.GB.ChinaMobileMS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(User user, HttpSession session) {

		String password = user.getPassword();
		user = userService.login(user.getUserName(), user.getPassword());
		System.out.println("after " + user);

		if (user == null) {
			return new ModelAndView("forward:/").addObject("id", "user_null");
		} else if (!password.equals(user.getPassword())) {
			return new ModelAndView("forward:/").addObject("id", "psw_incorrect");
		}

		session.setAttribute("user", user);

		return new ModelAndView("main");
	}

	@RequestMapping(value = "/top", method = RequestMethod.GET)
	public ModelAndView top(User user, HttpSession session) {

		return new ModelAndView("top");
	}

	@RequestMapping(value = "/left", method = RequestMethod.GET)
	public ModelAndView left(User user, HttpSession session) {

		return new ModelAndView("left");
	}
}
