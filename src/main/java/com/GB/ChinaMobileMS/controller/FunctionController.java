package com.GB.ChinaMobileMS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.User;

@Controller
public class FunctionController {

	@RequestMapping(value="/system/{id}", method=RequestMethod.GET)
	public ModelAndView systemUser(User user,@PathVariable("id") String id, HttpSession session){
		//requestParam获取参数id
		System.out.println("id="+id);
		if(id.equals("user"))
			return new ModelAndView("/function/system-user");
		else if(id.equals("user-add"))
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
	
	
	@RequestMapping(value="/property/{id}", method=RequestMethod.GET)
	public ModelAndView propertyUser(User user,@PathVariable("id") String id, HttpSession session){
		
		if(id.equals("server"))
			return new ModelAndView("/function/property-server");
		else if(id.equals("auditing"))
			return new ModelAndView("/function/property-auditing");
		else if(id.equals("management"))
			return new ModelAndView("/function/property-management");
		else if(id.equals("management-data"))
			return new ModelAndView("/function/property-management-data");
		else if(id.equals("management-system"))
			return new ModelAndView("/function/property-management-system");
		else if(id.equals("management-system-add"))
			return new ModelAndView("/function/property-management-system-add");
		else if(id.equals("applicant"))
			return new ModelAndView("/function/property-applicant");
		else
			return new ModelAndView("forward:/");
	}
	
}
