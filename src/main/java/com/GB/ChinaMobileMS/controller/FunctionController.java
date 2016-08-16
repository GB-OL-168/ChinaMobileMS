package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class FunctionController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/system-", method=RequestMethod.GET)
	public ModelAndView systemUser(User user, HttpSession session,@RequestParam("id") String id){
		
		if(id.equals("user")){
			
			List<User> listUser = userService.listUser();
			
//			ModelAndView model = new ModelAndView("main");
//			System.out.println("User2 = " +listUser.get(2));
//			model.addObject("listUser", listUser);
			
			Map map =new HashMap();
			map.put("listUser",listUser);//userlist是个Arraylist之类的  

			return new ModelAndView("/function/system-user",map);
//			model.addAllObjects();
//			
//
//
//			model.setViewName("/function/system-user");
//			
//			return model;
			
		}

		else if(id.equals("userAdd"))
			return new ModelAndView("/function/system-user-add");
		else if(id.equals("role-assignment"))
			return new ModelAndView("/function/system-role-assignment");
		else if(id.equals("role-assignment-add"))
			return new ModelAndView("/function/system-role-assignment-add");
		else if(id.equals("role-authorization"))
			return new ModelAndView("/function/system-role-authorization");
		else if(id.equals("role-authorization-add"))
			return new ModelAndView("/function/system-role-authorization-add");
		else if(id.equals("parameter"))
			return new ModelAndView("/function/system-parameter");
		else if(id.equals("parameter-update"))
			return new ModelAndView("/function/system-parameter-update");
		else if(id.equals("data"))
			return new ModelAndView("/function/system-data");
		else
			return new ModelAndView("forward:/");
	}
}
